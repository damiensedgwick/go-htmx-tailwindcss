/** @type {import('tailwindcss').Config} */
module.exports = {
    content: ["./public/views/**/*.html"],
    theme: {
        extend: {
            animation: {
                "pulse": "cubic-bezier(0, 0, 0, 0.5) infinite",
                "glow": "5s linear infinite",
            },
            keyframes: {
                glow: {
                    "0%": {
                        background: "red"
                    },
                    "33%": {
                        background: "green"
                    },
                    "66%": {
                        background: "blue"
                    },
                    "100%": {
                        background: "red"
                    },
                },
                pulse: {
                    "50%": {
                        transform: "scale(2)"
                    }
                }
            },
        },
    },
    plugins: [],
}
