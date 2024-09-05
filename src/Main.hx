// Here we just load some configs, static data, etc...
class Main {
	public static function main() {
		#if hl
		hxd.res.Resource.LIVE_UPDATE = true;
		hxd.Res.initLocal();
		#else
		hxd.Res.initEmbed();
		#end
		Game.instance;

		trace('VERSION: ${Config.VERSION}');
	}
}
