package serg.utils.interfaces;

import org.json.JSONObject;
import serg.messages.PlayerPOJO;

/**
 * Created by jc on 22.03.17.
 */
public interface Player extends JSONable {

    void spawn(int coordX, int coordY);
    String getName();
    String getSprite();
    void update(PlayerPOJO p);
}
