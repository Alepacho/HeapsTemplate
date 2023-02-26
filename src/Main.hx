class Main extends hxd.App {
    var image: h2d.Bitmap;
    var tf   : h2d.Text;

    override function init() {
        super.init();

        var windowInstance = hxd.Window.getInstance();
        windowInstance.addResizeEvent(onResize);
        windowInstance.title = "Hello Heaps.io!";

        tf = new h2d.Text(hxd.res.DefaultFont.get(), s2d);
        tf.setScale(2);
        tf.text = "* I'm 19 years old and I've\n  already wasted my entire life.";
        tf.textAlign = Left;

        image = new h2d.Bitmap(hxd.Res.Burgerpants.toTile(), s2d);
        image.setScale(0.5);
        centerAll();
    }

    override function update(dt: Float) {
        super.update(dt);
    }

    override function onResize() {
        var stage = hxd.Window.getInstance();
        trace('Resized to ${stage.width}px * ${stage.height}px');
        centerAll();
    }

    function centerAll() {
        var stage = hxd.Window.getInstance();

        var imageSize = image.getSize();
        image.x = stage.width  / 2 - imageSize.width  / 2;
        image.y = stage.height / 2 - imageSize.height;

        var textSize = tf.getSize();
        tf.x = stage.width  / 2 - textSize.width / 2;
        tf.y = stage.height / 2 + textSize.height / 2;
    }

    static function main() {
        hxd.Res.initEmbed();
        new Main();
    }
}