  
const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  variants: {},
  plugins: [],
  theme: {
    extend: {
      colors: {
        primary: {
          DEFAULT: '#FF8400'
        },
        secondary: {
          DEFAULT: '#12A5ED'
        },
        complementary: {
          DEFAULT: '#7ED321'
        }
      },
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  }
}
