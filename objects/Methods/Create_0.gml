function Animal(_x, _y) constructor {
    x = _x;
    y = _y;
    
    t = 0;
    
    hp = 1;
    
    method_step = function() {
        x += 2 * dcos(t);
        y -= 2 * dsin(t);
        t += 2;
        
        if (keyboard_check_pressed(vk_anykey)) {
            method_heal(1);
        }
    }
    
    method_draw = function() {
        draw_circle(x, y, 32, false);
        draw_set_halign(fa_center);
        draw_text(x, y - 50, "HP: " + string(hp));
    }
    
    method_damage = function(_amount) {
        hp -= _amount;
        if (hp <= 0) {
            show_message("aaaaaaaaa!");
        }
    }
    
    method_heal = function(_amount) {
        hp += _amount;
    }
    
    method_heal(10);
}

doggo = new Animal(400, 400);