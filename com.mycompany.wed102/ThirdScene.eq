public class ThirdScene : SEScene
{
        SESprite col1;
    SESprite col2;
    SESprite col3;
    SESprite col4;


    SESprite text2;
    SESprite text3;
    SESprite text4;
    SESprite text5;


    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
        add_entity(SESpriteEntity.for_color(Color.instance("green"), get_scene_width(), get_scene_height()));

col1 = add_sprite_for_color(Color.instance("red"), 0.25*get_scene_width(), 0.25*get_scene_height());
        col1.move(0.75*get_scene_width(),0.6*get_scene_height());

        col2 = add_sprite_for_color(Color.instance("blue"), 0.25*get_scene_width(), 0.25*get_scene_height());
        col2.move(0.75*get_scene_width(),0.7*get_scene_height());

        col3 = add_sprite_for_color(Color.instance("yellow"), 0.25*get_scene_width(), 0.25*get_scene_height());
        col3.move(0.75*get_scene_width(),0.8*get_scene_height());

        col4 = add_sprite_for_color(Color.instance("black"), 0.25*get_scene_width(), 0.25*get_scene_height());
        col4.move(0.75*get_scene_width(),0.9*get_scene_height());
rsc.prepare_font("myfont","ariel bold color=#551a8b",40);

        text2=add_sprite_for_text("blue","myfont");
        text2.move(0.75*get_scene_width(),0.7*get_scene_height());
        text3=add_sprite_for_text("yellow","myfont");
        text3.move(0.75*get_scene_width(),0.8*get_scene_height());
        text4=add_sprite_for_text("main","myfont");
        text4.move(0.75*get_scene_width(),0.9*get_scene_height());
        text5=add_sprite_for_text("red","myfont");
        text5.move(0.75*get_scene_width(),0.6*get_scene_height());
    }
    public void on_pointer_press(SEPointerInfo pi) {
        base.on_pointer_press(pi);

         if(pi.is_inside(0.75*get_scene_width(),0.5*get_scene_height(),get_scene_width(), 0.6*get_scene_height())) {
            switch_scene(new MainScene());
        }
        if(pi.is_inside(0.75*get_scene_width(),0.6*get_scene_height(),get_scene_width(), 0.7*get_scene_height())) {
            switch_scene(new FirstScene());
        }
        if(pi.is_inside(0.75*get_scene_width(),0.7*get_scene_height(),get_scene_width(), 0.8*get_scene_height())) {
            switch_scene(new SecondScene());
        }
        if(pi.is_inside(0.75*get_scene_width(),0.8*get_scene_height(),get_scene_width(), 0.9*get_scene_height())) {
            switch_scene(new FourthScene());
        }
        if(pi.is_inside(0.75*get_scene_width(),0.9*get_scene_height(),get_scene_width(), get_scene_height())) {
            switch_scene(new MainScene());
        }
    }
    public void cleanup() {
        base.cleanup();
    }
}