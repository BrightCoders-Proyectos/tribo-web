  
const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  variants: {
    extend: {
      boxShadow: ['active'],
      opacity: ['active']
    }
  },
  plugins: [],
  theme: {
    extend: {
      maxWidth: {
        '1xs': '16rem',
        '2xs': '12rem',
        '3xs': '8rem',
      },
      colors: {
        scene: {
          DEFAULT: '#F6F8FF',
          dark: '#262728',
          neutral: '#9CA3AF',
          input: '#E1F1F5'
        },
        tribo: {
          DEFAULT: '#037D94',
          secondary: '#FFCF87'
        },
        extra: {
          primary: '#29335C',
          secondary: '#EFD13B'
        },
        alert: {
          success: '#047857',
          fail: '#B91C1C',
          disabled: '#D1D5DB'
        }
      },
      fontFamily: false,
    },
  }
}
