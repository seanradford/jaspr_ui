/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./{lib,web}/**/*.dart"],
  theme: {
    extend: {},
  },
  // install daisyui
  plugins: [require("daisyui")],
  // daisy ui themes
  daisyui: {
    themes: ["light", "dark", "dracular", "cupcake"],
  },
};
