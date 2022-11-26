import logo from "./assets/img/logo.png"
import background from "./assets/img/volleyball.jpeg"
import {SeamlessIframe} from "seamless-iframe";

tag app
	def mount
		html = await window.fetch("https://docs.google.com/spreadsheets/d/e/2PACX-1vSAErhsexUK8usrYeU2x2oy2sHCcioP393SdOiJaEQfdDp1GtjfizQCbg6hvLeCaqTOUOsSwrjnPRys/pubhtml?gid=944031142&amp;single=true&amp;widget=true&amp;headers=false").then do(response)
			switch response.status
				when 200
					return response.text()
				when 404
					throw response
		console.log html

	# inline styles with square brackets
	<self>
		# this css applies to nested svg elements and not parents
		css img h:100 p:1.5em
			transition:transform 250ms, filter 250ms
			filter:drop-shadow(0 0 3em white)
			@hover transform:scale(1.1)
				filter:drop-shadow(0 0 3em white)
		css a.grow
			transition:transform 250ms, filter 250ms
			@hover transform:scale(1.1)
		css ff: Teko, Helvetica, Arial ls:1.5
			#footer d:none
			.tab w:200px ta:center

		# <img src=logo>
		<nav[bgc:gray4/60 pos:sticky t:0 z:50]>
				<div[mx:auto max-width:7xl px:2 px@sm:6 px@lg:8 mt:-22]>
					<div[pos:relative d:flex h:20 ai:center jc:center]>
						<a.tab[c:white px:3 py:2 fs:20px mt:3 td:none tt:capitalize fw:bold td@hover:underline].grow route-to='/'>
							"CHAMPIONSHIP PLAYOFFS"
						<a.tab[c:white px:3 py:2 fs:20px mt:3 td:none tt:capitalize fw:bold td@hover:underline].grow route-to='/placement'>
							"PLACEMENT MATCHES"
						<a.tab[c:white px:3 py:2 fs:20px mt:3 td:none tt:capitalize fw:bold td@hover:underline].grow href='https://docs.google.com/spreadsheets/d/1ve2gkls7wdFut-jesR487JjHnLA3SXRtnoEGl2t2BEo/edit#gid=0'>
							"PRACTICE SCHEDULE"
						<div[d:flex ai:center jc:center]>
							<div[d:flex fls:0 ai:center]>
								# <img[d:block h:8 w:auto d@lg:none] src=logo alt="Your Company">
								<img[d:block h:45 mt:26 w:auto] src=logo alt="BCSS Provincials Logo">
						<a.tab[c:white px:3 py:2 fs:20px mt:3 td:none tt:capitalize fw:bold td@hover:underline].grow route-to='/results'>
							"POOL PLAY RESULTS"
						<a.tab[c:white px:3 py:2 fs:20px mt:3 td:none tt:capitalize fw:bold td@hover:underline].grow route-to='/awards'>
							"FINAL STANDINGS / AWARDS"
						<a.tab[c:white px:3 py:2 fs:20px mt:3 td:none tt:capitalize fw:bold td@hover:underline].grow route-to='/livestream'>
							"LIVESTREAM"
		<div route='/'>
			<div[bg:url(./assets/img/volleyball.jpeg),rgba(0, 0, 0, 0.7) background-blend-mode:multiply h:100 w:100% bgs:cover]>
			<h1[d:inline-block ta:center w:100% pos:relative t:-150px c:white]> "Tournament Draw"
			<iframe[h:1000px w:100vw d:block m: 0 auto mt: -40] src="https://docs.google.com/spreadsheets/d/e/2PACX-1vSAErhsexUK8usrYeU2x2oy2sHCcioP393SdOiJaEQfdDp1GtjfizQCbg6hvLeCaqTOUOsSwrjnPRys/pubhtml?gid=217114146&amp;single=true&amp;widget=true&amp;headers=false">

		<div route='/placement'>
			<h1> "Placement"
			<div[bg:url(./assets/img/volleyball.jpeg),rgba(0, 0, 0, 0.7) background-blend-mode:multiply h:100 w:100% bgs:cover]>
			<iframe[h:1000px w:71rem d:block m: 0 auto mt: -40] src="https://docs.google.com/spreadsheets/d/e/2PACX-1vRkJR6ZSmHlasCMU2AtQFKsvHn_lUEVUcXaj8bKlvjhXymd3TV0x_F1b6ZZwGL4ZgnT5w8k6PVpFWvk/pubhtml?gid=1701444266&amp;single=true&amp;widget=true&amp;headers=false">

		<div route='/results'>
			<h1> "Results"
			<div[bg:url(./assets/img/volleyball.jpeg),rgba(0, 0, 0, 0.7) background-blend-mode:multiply h:100 w:100% bgs:cover]>
			<iframe[h:1000px w:71rem d:block m: 0 auto mt: -40] src="https://docs.google.com/spreadsheets/d/e/2PACX-1vRkJR6ZSmHlasCMU2AtQFKsvHn_lUEVUcXaj8bKlvjhXymd3TV0x_F1b6ZZwGL4ZgnT5w8k6PVpFWvk/pubhtml?gid=1701444266&amp;single=true&amp;widget=true&amp;headers=false">

		<div route='/awards'>
			<h1> "Awards"
			<div[bg:url(./assets/img/volleyball.jpeg),rgba(0, 0, 0, 0.7) background-blend-mode:multiply h:100 w:100% bgs:cover]>
			<iframe[h:1000px w:71rem d:block m: 0 auto mt: -40] src="https://docs.google.com/spreadsheets/d/e/2PACX-1vRkJR6ZSmHlasCMU2AtQFKsvHn_lUEVUcXaj8bKlvjhXymd3TV0x_F1b6ZZwGL4ZgnT5w8k6PVpFWvk/pubhtml?gid=1701444266&amp;single=true&amp;widget=true&amp;headers=false">

imba.mount <app>
