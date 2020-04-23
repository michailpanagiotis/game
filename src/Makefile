install:
	mix deps.get
	cd assets && npm install && node node_modules/webpack/bin/webpack.js --mode development
	mix ecto.create
