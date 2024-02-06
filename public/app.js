import './app.sass'

import Inputmask from 'inputmask'

Inputmask({
	mask: '+7 (999) 999-99-99',
	showMaskOnHover: false
}).mask(document.querySelectorAll(`input[type=tel]`))