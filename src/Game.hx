// Our main class
class Game extends hxd.App {
	public static final instance:Game = new Game();

	var image:h2d.Bitmap;
	var tf:h2d.Text;

	function setupWindow() {
		var w = hxd.Window.getInstance();
		w.addResizeEvent(onResize);
		w.addEventTarget(onEvent);
		w.title = "Hello Heaps.io!";
	}

	override function init() {
		super.init();

		this.setupWindow();

		tf = new h2d.Text(hxd.res.DefaultFont.get(), s2d);
		tf.setScale(2);
		tf.text = "* I'm 19 years old and I've\n  already wasted my entire life.";
		tf.textAlign = Left;

		image = new h2d.Bitmap(hxd.Res.Burgerpants.toTile(), s2d);
		image.setScale(0.5);
		centerAll();
	}

	public function close() {
		hxd.System.exit();
	}

	override function update(dt:Float) {
		super.update(dt);
	}

	override function onResize() {
		var w = hxd.Window.getInstance();
		trace('Resized to ${w.width}px * ${w.height}px');
		centerAll();
	}

	function centerAll() {
		var w = hxd.Window.getInstance();

		var size = image.getSize();
		image.x = w.width / 2 - size.width / 2;
		image.y = w.height / 2 - size.height;

		size = tf.getSize();
		tf.x = w.width / 2 - size.width / 2;
		tf.y = w.height / 2 + size.height / 2;
	}

	private function onEvent(event:hxd.Event) {
		switch (event.kind) {
			case EKeyDown:
				{
					if (event.keyCode == hxd.Key.ESCAPE) {
						this.close();
					}
				}
			case _:
				{}
		}
	}
}
