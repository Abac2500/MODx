import { defineConfig } from 'vite'

export default defineConfig({
	server: {
		host: 'hh.local',
		port: 5000,
		cors: true,
		origin: 'hh.local:5000'
	},
	build: {
		outDir: '../public/build',
		rollupOptions: {
			input: {
				app: './app.js'
			},
			output: {
				entryFileNames: '[name].js',
				chunkFileNames: '[name].js',
				assetFileNames: '[name].[ext]'
			}
		}
	}
})