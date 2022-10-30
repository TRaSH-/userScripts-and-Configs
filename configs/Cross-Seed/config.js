module.exports = {
	delay: 60,
	torznab: [
		"http://prowlarr:9696/30/api?apikey=TOP_SECRET_API_KEY&tracker=BeyondHD",
		"http://prowlarr:9696/37/api?apikey=TOP_SECRET_API_KEY&tracker=Blutopia",
		"http://prowlarr:9696/35/api?apikey=TOP_SECRET_API_KEY&tracker=FileList",
		"http://prowlarr:9696/25/api?apikey=TOP_SECRET_API_KEY&tracker=HDBits",
		"http://prowlarr:9696/21/api?apikey=TOP_SECRET_API_KEY&tracker=PassThePopcorn",
		"http://prowlarr:9696/38/api?apikey=TOP_SECRET_API_KEY&tracker=TorrentLeech",
		"http://prowlarr:9696/17/api?apikey=TOP_SECRET_API_KEY&tracker=HD-Torrents",
		"http://prowlarr:9696/16/api?apikey=TOP_SECRET_API_KEY&tracker=IPTorrents",
		"http://prowlarr:9696/28/api?apikey=TOP_SECRET_API_KEY&tracker=PrivateHD",
	],
	torrentDir: "/input",
	outputDir: "/output",
	includeEpisodes: true,
	includeNonVideos: true,
	duplicateCategories: true,
	fuzzySizeThreshold: 0.02,
	excludeOlder: "14 days",
	excludeRecentSearch: undefined,
	action: "inject",
	rtorrentRpcUrl: undefined,
	qbittorrentUrl: "http://admin:adminadmin@qbittorrent-vpn-movies:8080",
	notificationWebhookUrl: "https://dev.notifiarr.com/api/v1/notification/crossSeed/TOP_SECRET_API_KEY",
/**
 * Run rss scans on a schedule. Format: https://github.com/vercel/ms
 * Set to undefined or null to disable. Minimum of 10 minutes.
 * Examples:
 * "10min"
 * "2w"
 * "3 days"
 */
	rssCadence: "30min",

	/**
	* Run searches on a schedule. Format: https://github.com/vercel/ms
	* Set to undefined or null to disable. Minimum of 1 day.
	* If you have RSS enabled, you won't need this to run often (2+ weeks recommended)
	* Examples:
	* "10min"
	* "2w"
	* "3 days"
	*/
	searchCadence: "7 days",
};