# Use node:20 as the base image
FROM node:20-slim AS base

FROM base AS deps

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install

# Rebuild the source code only when needed
FROM base AS builder

WORKDIR /app

COPY --from=deps /app/node_modules ./node_modules
COPY . .

# Production image, copy all the files and run next
FROM base AS runner

WORKDIR /app

ENV HOME /app/yarn
ENV NODE_ENV development
ENV NEXT_TELEMETRY_DISABLED 1

RUN adduser --system --uid 1001 nextjs
RUN addgroup --system --gid 1001 nodejs

RUN mkdir .next yarn yarn/cache yarn/global
RUN chown nextjs:nodejs .next yarn yarn/cache yarn/global

COPY --from=builder --chown=nextjs:nodejs /app .

USER nextjs

EXPOSE 3000

ENV PORT 3000
ENV HOSTNAME "0.0.0.0"

CMD ["yarn", "dev"]
