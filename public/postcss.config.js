import autoprefixer from 'autoprefixer'

export default {
	plugins: [
		autoprefixer({
			overrideBrowserslist: ['> 0%']
		})
	]
}