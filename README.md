# Neo Tab - A rework of [BenoitBellegarde/UltimateTab](https://github.com/BenoitBellegarde/UltimateTab)

A fast, responsive interface to browse guitar tabs scraped from Ultimate Guitar.

<details closed>
<summary>Desktop Screenshot</summary>

![Ultimate Tab Screenshot](https://i.ibb.co/RYLXkNc/586shots-so.png)

</details>

<details closed>
<summary>Mobile Screenshot</summary>

![Ultimate Tab Screenshot](https://i.ibb.co/THdSmPK/673shots-so.png)

</details>

## Features

- Browse responsive guitar tabs scraped in real time from Ultimate Guitar.
- Chords visualizer with official diagrams from Ultimate Guitar.
- Chords transposer.
- Backing track player (using YouTube API).
- Add tabs to favorites without the need for an account (stored in local storage).

## Technologies

Neo Tab has been built with a modern stack, including:

- [NextJS](https://nextjs.org/) - React Framework
- [React Query](https://tanstack.com/query/v3/) - Server state management
- [React Context API](https://react.dev/reference/react#context-hooks) - Client state management
- [ChakraUI](https://chakra-ui.com/) - UI Component Library
- [Vexchords](https://github.com/0xfe/vexchords) - Chords renderer library

## Installation

To run Neo Tab locally, you must have Node.js and NPM or Yarn installed on your computer. Follow these steps to get started:

1. Clone this repository using `git clone https://github.com/TheModdedChicken/NeoTab.git`
2. Navigate to the project directory using the terminal or command prompt.
3. Run `bun install` to install the dependencies.
4. Run `bun run dev` to start the development server.
5. Create `.env.local` file and add a variable `YOUTUBE_API_KEY` with a YouTube API key as value to get backing tracks
6. Open http://localhost:3000 in your web browser to see Neo Tab running.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue for any features or bug fixes.

## License

Neo Tab is licensed under the [MIT License](https://opensource.org/licenses/MIT).
