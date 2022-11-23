import logo from "./assets/img/logo.png"
import background from "./assets/img/volleyball.jpeg"

tag app

	# inline styles with square brackets
	<self>
		# this css applies to nested svg elements and not parents
		css img h:100 p:1.5em
			transition:transform 250ms, filter 250ms
			filter:drop-shadow(0 0 3em white)
			@hover transform:scale(1.1)
				filter:drop-shadow(0 0 6em white)
		css ff: Helvetica, arial
			#footer d:none

		# <img src=logo>
		<nav[bgc:gray4/60 pos:sticky t:0 z:50]>
				<div[mx:auto max-width:7xl px:2 px@sm:6 px@lg:8 mt:-22]>
					<div[pos:relative d:flex h:20 ai:center jc:space-between]>				
						<a[d:flex c:white px:3 py:2 fs:md td:none tt:capitalize fw:bold] href="#" aria-current="page">
							"CHAMPIONSHIP PLAYOFFS"
						<a[d:flex c:white px:3 py:2 fs:md td:none tt:capitalize fw:bold] href="#">
							"PLACEMENT MATCHES"
						<div[d:flex ai:center jc:center]>
							<div[d:flex fls:0 ai:center]>
								# <img[d:block h:8 w:auto d@lg:none] src=logo alt="Your Company">
								<img[d:block h:38 mt:18 w:auto] src=logo alt="Your Company">
						<a[d:flex c:white px:3 py:2 fs:md td:none tt:capitalize fw:bold] href="#">
							"POOL PLAY RESULTS"
						<a[d:flex c:white px:3 py:2 fs:md td:none tt:capitalize fw:bold] href="#">
							"FINAL STANDINGS / AWARDS"
		<div[bg:url(./assets/img/volleyball.jpeg),rgba(0, 0, 0, 0.7) background-blend-mode:multiply h:100 w:100% bgs:cover]>
		<iframe[h:1000px w:71rem d:block m: 0 auto mt: -40] src="https://docs.google.com/spreadsheets/d/e/2PACX-1vRkJR6ZSmHlasCMU2AtQFKsvHn_lUEVUcXaj8bKlvjhXymd3TV0x_F1b6ZZwGL4ZgnT5w8k6PVpFWvk/pubhtml?gid=1701444266&amp;single=true&amp;widget=true&amp;headers=false">
imba.mount <app>
