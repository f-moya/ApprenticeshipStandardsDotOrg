const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  darkMode: 'class',
  
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
    './node_modules/flowbite/**/*.js',
  ],
  theme: {
    extend: {
      colors: {
        primary: {
          '50': '#f3f7f8',
          '100': '#e1e8ec',
          '200': '#c6d3db',
          '300': '#9eb4c2',
          '400': '#6f8da1',
          '500': '#547286',
          '600': '#485f72',
          '700': '#415262',
          '800': '#394551',
          '900': '#333c46',
        },
        secondary: {
          '50': '#fff2f1',
          '100': '#ffe2e0',
          '200': '#ffcac7',
          '300': '#ffa5a0',
          '400': '#ff7169',
          '500': '#f9443a',
          '600': '#e32318',
          '700': '#c21c13',
          '800': '#a11b13',
          '900': '#851d17',
        },
        seafoam: {
          '50': '#eefffd',
          '100': '#DEEEED',
          '200': '#CFE0E0',
          '300': '#9AC1C1',
          '400': '#66A2A3',
          '500': '#449697',
          '600': '#238B8D',
          '700': '#018083',
          '800': '#066B6E',
          '900': '#0B5658',
        },
        yonder: {
          '50': '#f5f7fa',
          '100': '#eaeef4',
          '200': '#cfdbe8',
          '300': '#a6bed3',
          '400': '#759abb',
          '500': '#537ca1',
          '600': '#416488',
          '700': '#36516e',
          '800': '#2f455d',
          '900': '#2b3c4f',
        },
        saffron: {
          '50': '#fefcec',
          '100': '#fcf3c9',
          '200': '#fae78d',
          '300': '#f7d552',
          '400': '#f5c32e',
          '500': '#eea212',
          '600': '#d37d0c',
          '700': '#af580e',
          '800': '#8e4412',
          '900': '#753912',
        },
        pear: {
          '50': '#fcfde8',
          '100': '#f6facd',
          '200': '#edf5a1',
          '300': '#dceb6b',
          '400': '#cade41',
          '500': '#abc31f',
          '600': '#869c14',
          '700': '#657714',
          '800': '#515e16',
          '900': '#445017',
        },
        goldenrod: {
          '50': '#fcfaea',
          '100': '#f8f4c9',
          '200': '#f3e895',
          '300': '#ebd559',
          '400': '#e3c02c',
          '500': '#d4aa1e',
          '600': '#ba8718',
          '700': '#926016',
          '800': '#794d1a',
          '900': '#68401b',
        },
        rust: {
          '50': '#fff9ec',
          '100': '#fff2d2',
          '200': '#ffe1a4',
          '300': '#ffca6b',
          '400': '#ffa82f',
          '500': '#ff8b07',
          '600': '#f96f00',
          '700': '#d15400',
          '800': '#a34109',
          '900': '#83370b',
        },
        accent: {
          '50': '#007F82',
          '100': '#5BA5A5',
          '200': '#B9E3E3',
          '300': '#F8FFFF'
        }
      },
      fontFamily: {
        sans: ['Montserrat', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('flowbite/plugin'),
  ]
}
