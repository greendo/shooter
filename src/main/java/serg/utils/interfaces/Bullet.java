package serg.utils.interfaces;

/**
 * Created by jc on 22.03.17.
 */
public interface Bullet extends JSONable {

    Integer getId();
    void hit(Player p);
    void hit(Terrain t);
    boolean hitOccured();
}
