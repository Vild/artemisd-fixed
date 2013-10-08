module artemisd.systems.intervalentityprocessingsystem;

import artemisd.aspect;
import artemisd.entity;
import artemisd.systems.intervalentitysystem;
import artemisd.utils.type;
import artemisd.utils.bag;

abstract class IntervalEntityProcessingSystem : IntervalEntitySystem 
{
    mixin TypeDecl;

    public this(Aspect aspect, float interval) 
    {
        super(aspect, interval);
    }

    protected abstract void process(Entity e);

    protected override void processEntities(Bag!Entity entities) 
    {
        for (int i = 0, s = entities.size(); s > i; i++) 
        {
            process(entities.get(i));
        }
    }

}
