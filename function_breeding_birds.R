breeding_birds<- function (shape_bird)
{
 if ((1%in%shape_bird$SEASONAL | 2%in%shape_bird$SEASONAL) & #####2BREEDING AND 1RESIDENT POLYGONS
    (1%in%shape_bird$ORIGIN| 2%in%shape_bird$ORIGIN) & #####1NATIVE AND 2REINTRODUCED POLYGONS
    any(shape_bird$PRESENCE!=5)){  #####5EXTINT POLYGONS
                      
  bird<-shape_bird[(shape_bird$SEASONAL==1 | shape_bird$SEASONAL==2) & #####2BREEDING AND 1RESIDENT POLYGONS
                     (shape_bird$ORIGIN==1 | shape_bird$ORIGIN==2) & #####1NATIVE AND 2REINTRODUCED POLYGONS
                     shape_bird$PRESENCE!=5,]
  return(bird)
 }else{
  return(NULL)
 }
}


