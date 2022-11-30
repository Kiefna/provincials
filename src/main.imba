import logo from "./assets/img/logo.png"
import background from "./assets/img/volleyball.jpeg"
import OverlayTrigger from 'react-bootstrap/OverlayTrigger';
import Tooltip from 'react-bootstrap/Tooltip';

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
		<nav[bgc:gray4/60 pos:sticky t:0 zi:500000]>
				<div[mx:auto max-width:7xl px:2 px@sm:6 px@lg:8 mt:-22]>
					<div[pos:relative d:flex h:20 ai:center jc:center]>
						<a.tab[c:white px:3 py:2 fs:20px mt:3 td:none tt:capitalize fw:bold td@hover:underline d@lt-md:none].grow route-to='/'>
							"PLAYOFF DRAW"
						<a.tab[c:white px:3 py:2 fs:20px mt:3 td:none tt:capitalize fw:bold td@hover:underline d@lt-md:none].grow href='https://docs.google.com/spreadsheets/d/1ve2gkls7wdFut-jesR487JjHnLA3SXRtnoEGl2t2BEo/edit#gid=0'>
							"PRACTICE SCHEDULE"
						<a.tab[c:white px:3 py:2 fs:20px mt:3 td:none tt:capitalize fw:bold td@hover:underline d@lt-md:none].grow route-to='/livestream'>
							"LIVESTREAM"	
						<div[d:flex ai:center jc:center]>
							<div[d:flex fls:0 ai:center]>
								# <img[d:block h:8 w:auto d@lg:none] src=logo alt="Your Company">
								<img[d:block h:45 mt:26 w:auto] src=logo alt="BCSS Provincials Logo">
						<a.tab[c:white px:3 py:2 fs:20px mt:3 td:none tt:capitalize fw:bold td@hover:underline d@lt-md:none].grow route-to='/results'>
							"POOL PLAY RESULTS"
						<a.tab[c:white px:3 py:2 fs:20px mt:3 td:none tt:capitalize fw:bold td@hover:underline d@lt-md:none].grow route-to='/awards'>
							"FINAL STANDINGS / AWARDS"
						<a.tab[c:white px:3 py:2 fs:20px mt:3 td:none tt:capitalize fw:bold td@hover:underline d@lt-md:none].grow>
		<div route='/'>
			<div[bg:url(./assets/img/volleyball.jpeg),rgba(0, 0, 0, 0.7) background-blend-mode:multiply h:100 w:100% bgs:cover]>
			<div[d:inline-block ta:center w:100% pos:relative zi:0 t:-150px]>
				<h1[c:white mb:5px z:0]> "Tournament Draw"
				<a href="https://docs.google.com/spreadsheets/d/1IgX6eGuwy6TMQ-fdtR86CbE4nzougnf6I9am_yG1kSY/edit?usp=sharing#gid=395672007"> # "https://docs.google.com/spreadsheets/d/1IgX6eGuwy6TMQ-fdtR86CbE4nzougnf6I9am_yG1kSY/edit?usp=sharing"
					<div[d:inline-block m:0,auto c:white mb:50px zi:0 bgc:#1D47A3 bgc@hover:#527ad1 rd:md w:100px]> "Spreadsheet" 
			<iframe[h:1000px w:100vw d:block m:0 auto mt:-40] src="https://docs.google.com/spreadsheets/d/e/2PACX-1vSAErhsexUK8usrYeU2x2oy2sHCcioP393SdOiJaEQfdDp1GtjfizQCbg6hvLeCaqTOUOsSwrjnPRys/pubhtml?gid=395672007&amp;single=true&amp;widget=true&amp;headers=false">
			# https://docs.google.com/spreadsheets/d/e/2PACX-1vSAErhsexUK8usrYeU2x2oy2sHCcioP393SdOiJaEQfdDp1GtjfizQCbg6hvLeCaqTOUOsSwrjnPRys/pubhtml?gid=217114146&amp;single=true&amp;widget=true&amp;headers=false

		<div route='/playoff'>
			<div[bg:url(./assets/img/volleyball.jpeg),rgba(0, 0, 0, 0.7) background-blend-mode:multiply h:100 w:100% bgs:cover]>
			<div[d:inline-block ta:center w:100% pos:relative t:-150px]>
				<h1[c:white mb:5px]> "Playoff Draw"
				<a href="https://docs.google.com/spreadsheets/d/1IgX6eGuwy6TMQ-fdtR86CbE4nzougnf6I9am_yG1kSY/edit?usp=sharing#gid=1863547180">
					<div[d:inline-block m:0,auto c:white mb:50px bgc:#1D47A3 bgc@hover:#527ad1 rd:md w:100px]> "Spreadsheet" 
			<iframe[h:1000px w:100vw d:block m:0 auto mt:-40] src="https://docs.google.com/spreadsheets/d/e/2PACX-1vSAErhsexUK8usrYeU2x2oy2sHCcioP393SdOiJaEQfdDp1GtjfizQCbg6hvLeCaqTOUOsSwrjnPRys/pubhtml?gid=1863547180&amp;single=true&amp;widget=true&amp;headers=false">

		<div route='/results'>
			<div[bg:url(./assets/img/volleyball.jpeg),rgba(0, 0, 0, 0.7) background-blend-mode:multiply h:100 w:100% bgs:cover]>
			<div[d:inline-block ta:center w:100% pos:relative t:-150px]>
				<h1[c:white mb:5px]> "Pool Play Results"
				<a href="https://docs.google.com/spreadsheets/d/1IgX6eGuwy6TMQ-fdtR86CbE4nzougnf6I9am_yG1kSY/edit?usp=sharing#gid=87865985">
					<div[d:inline-block m:0,auto c:white mb:50px bgc:#1D47A3 bgc@hover:#527ad1 rd:md w:100px]> "Spreadsheet" 
			<iframe[h:1000px w:100vw d:block m:0 auto mt:-40] src="https://docs.google.com/spreadsheets/d/e/2PACX-1vSAErhsexUK8usrYeU2x2oy2sHCcioP393SdOiJaEQfdDp1GtjfizQCbg6hvLeCaqTOUOsSwrjnPRys/pubhtml?gid=87865985&amp;single=true&amp;widget=true&amp;headers=false">

		<div route='/awards'>
			<div[bg:url(./assets/img/volleyball.jpeg),rgba(0, 0, 0, 0.7) background-blend-mode:multiply h:100 w:100% bgs:cover]>
			<h1[d:inline-block ta:center w:100% pos:relative t:-150px c:white]> "Awards" 
			<h1[d:inline-block ta:center w:100% pos:relative t:-200px c:white]> "COMING SOON!" 

			# <iframe[h:1000px w:71rem d:block m:0 auto mt:-40] src="https://docs.google.com/spreadsheets/d/e/2PACX-1vRkJR6ZSmHlasCMU2AtQFKsvHn_lUEVUcXaj8bKlvjhXymd3TV0x_F1b6ZZwGL4ZgnT5w8k6PVpFWvk/pubhtml?gid=1701444266&amp;single=true&amp;widget=true&amp;headers=false">
		
		<div route='/livestream'>
			<div[bg:url(./assets/img/volleyball.jpeg),rgba(0, 0, 0, 0.7) background-blend-mode:multiply h:100 w:100% bgs:cover]>
			<h1[d:inline-block ta:center w:100% pos:relative t:-150px c:white]> "Livestream" 
			<div[d:inline-block ta:center w:100% pos:relative t:-150px]>
				<div[d:inline-block m:0,auto c:white mb:50px bgc:#1D47A3 bgc@hover:#527ad1 rd:md w:100px mr:10px]> "Court 1" 
				<div[d:inline-block m:0,auto c:white mb:50px bgc:#1D47A3 bgc@hover:#527ad1 rd:md w:100px mr:10px]> "Court 2"
				<div[d:inline-block m:0,auto c:white mb:50px bgc:#1D47A3 bgc@hover:#527ad1 rd:md w:100px]> "Court 3/4"  

imba.mount <app>
