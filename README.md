# One Page
### A custom startpage built with React.js
![Screenshot](/src/misc/artwork/screenshot.jpg)

### Install
```
git clone https://github.com/ajburns651/One-page.git
cd One-page
npm install
```
To make the weather widget work create a openweathermap account and create a api key. Create a .env file in the root of the project check out the `.env.example`.

To edit the weather location. Change the `city` variable in `src/api.js`. The city codes are available on [openweatherapi](https://openweathermap.org/).

Change artwork in `src/misc/artwork/` and change the file name to `artwork.jpg`.

Edit the links in `src/components/Links/Links.js`.

Then run `npm run build` when you are done editing the files.
