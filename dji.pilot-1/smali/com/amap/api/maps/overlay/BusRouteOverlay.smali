.class public Lcom/amap/api/maps/overlay/BusRouteOverlay;
.super Lcom/amap/api/maps/overlay/RouteOverlay;
.source "BusRouteOverlay.java"


# instance fields
.field private a:Lcom/amap/api/services/route/BusPath;

.field private b:Lcom/amap/api/maps/model/LatLng;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/AMap;Lcom/amap/api/services/route/BusPath;Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/amap/api/maps/overlay/RouteOverlay;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p3, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->a:Lcom/amap/api/services/route/BusPath;

    .line 32
    invoke-static {p4}, Lcom/amap/api/maps/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->startPoint:Lcom/amap/api/maps/model/LatLng;

    .line 33
    invoke-static {p5}, Lcom/amap/api/maps/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->endPoint:Lcom/amap/api/maps/model/LatLng;

    .line 34
    iput-object p2, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps/AMap;

    .line 35
    return-void
.end method

.method private a(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p1}, Lcom/amap/api/services/route/BusStep;->getExit()Lcom/amap/api/services/route/Doorway;

    move-result-object v0

    .line 298
    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x0

    .line 301
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/services/route/Doorway;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/amap/api/services/route/RouteBusLineItem;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteBusLineItem;->getDepartureBusStation()Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/busline/BusStationItem;->getBusStationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteBusLineItem;->getArrivalBusStation()Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/busline/BusStationItem;->getBusStationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") \u7ecf\u8fc7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteBusLineItem;->getPassStationNum()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u7ad9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/WalkStep;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 269
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/WalkStep;

    .line 270
    invoke-virtual {v0}, Lcom/amap/api/services/route/WalkStep;->getDistance()F

    move-result v0

    add-float/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6b65\u884c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u7c73"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p1}, Lcom/amap/api/services/route/BusStep;->getEntrance()Lcom/amap/api/services/route/Doorway;

    move-result-object v0

    .line 307
    if-nez v0, :cond_0

    .line 308
    const/4 v0, 0x0

    .line 310
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/services/route/Doorway;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addToMap()V
    .locals 14

    .prologue
    const-wide v12, 0x3f1a36e2eb1c432dL

    const/4 v4, 0x0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->a:Lcom/amap/api/services/route/BusPath;

    invoke-virtual {v0}, Lcom/amap/api/services/route/BusPath;->getSteps()Ljava/util/List;

    move-result-object v6

    move v5, v4

    .line 43
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_10

    .line 44
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/BusStep;

    .line 45
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v5, v1, :cond_9

    .line 46
    add-int/lit8 v1, v5, 0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/route/BusStep;

    .line 48
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 49
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/services/route/RouteBusWalkItem;->getSteps()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/services/route/RouteBusWalkItem;->getSteps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/route/WalkStep;

    invoke-virtual {v2}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/services/route/RouteBusWalkItem;->getSteps()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amap/api/services/route/RouteBusWalkItem;->getSteps()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/route/WalkStep;

    invoke-virtual {v2}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/core/LatLonPoint;

    invoke-static {v2}, Lcom/amap/api/maps/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    .line 61
    invoke-direct {p0, v0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->b(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    .line 62
    if-nez v2, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/services/route/RouteBusLineItem;->getPolyline()Ljava/util/List;

    move-result-object v2

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/core/LatLonPoint;

    .line 66
    :cond_0
    invoke-static {v2}, Lcom/amap/api/maps/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    .line 68
    iget-object v7, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps/AMap;

    new-instance v8, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v8}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/amap/api/maps/model/LatLng;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v3, 0x1

    aput-object v2, v9, v3

    invoke-virtual {v8, v9}, Lcom/amap/api/maps/model/PolylineOptions;->add([Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->getBuslineWidth()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->getWalkColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v2

    .line 73
    iget-object v3, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_1
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 77
    invoke-direct {p0, v0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->a(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    .line 78
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/services/route/RouteBusLineItem;->getPolyline()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amap/api/services/route/RouteBusLineItem;->getPolyline()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/core/LatLonPoint;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    if-nez v3, :cond_c

    .line 97
    :goto_1
    :try_start_1
    invoke-static {v2}, Lcom/amap/api/maps/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    .line 99
    invoke-virtual {v1}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/services/route/RouteBusWalkItem;->getSteps()Ljava/util/List;

    move-result-object v2

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/route/WalkStep;

    invoke-virtual {v2}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v2

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/core/LatLonPoint;

    invoke-static {v2}, Lcom/amap/api/maps/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    .line 102
    iget-object v7, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps/AMap;

    new-instance v8, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v8}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/amap/api/maps/model/LatLng;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v3, 0x1

    aput-object v2, v9, v3

    invoke-virtual {v8, v9}, Lcom/amap/api/maps/model/PolylineOptions;->add([Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->getBuslineWidth()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->getWalkColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v2

    .line 107
    iget-object v3, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 113
    :cond_2
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 115
    invoke-direct {p0, v0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->a(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    .line 116
    if-nez v2, :cond_3

    .line 117
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/services/route/RouteBusLineItem;->getPolyline()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/services/route/RouteBusLineItem;->getPolyline()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/core/LatLonPoint;

    .line 123
    :cond_3
    invoke-static {v2}, Lcom/amap/api/maps/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    .line 125
    invoke-direct {p0, v1}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->b(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    .line 126
    if-nez v2, :cond_4

    .line 127
    invoke-virtual {v1}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/services/route/RouteBusLineItem;->getPolyline()Ljava/util/List;

    move-result-object v2

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/core/LatLonPoint;

    .line 130
    :cond_4
    invoke-static {v2}, Lcom/amap/api/maps/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    .line 132
    invoke-virtual {p0, v3, v2}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->drawLineArrow(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)V

    .line 135
    :cond_5
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 137
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/services/route/RouteBusLineItem;->getPolyline()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/services/route/RouteBusLineItem;->getPolyline()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/core/LatLonPoint;

    invoke-static {v2}, Lcom/amap/api/maps/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    .line 143
    invoke-virtual {v1}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteBusLineItem;->getPolyline()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/core/LatLonPoint;

    invoke-static {v1}, Lcom/amap/api/maps/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    .line 146
    iget-wide v7, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v9, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v7, v9

    cmpl-double v3, v7, v12

    if-gtz v3, :cond_6

    iget-wide v7, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v9, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v7, v9

    cmpl-double v3, v7, v12

    if-lez v3, :cond_7

    .line 149
    :cond_6
    invoke-virtual {p0, v2, v1}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->drawLineArrow(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)V

    .line 154
    :cond_7
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 155
    invoke-direct {p0, v0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->b(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    .line 156
    if-nez v1, :cond_8

    .line 157
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteBusWalkItem;->getSteps()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/services/route/RouteBusWalkItem;->getSteps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/route/WalkStep;

    invoke-virtual {v1}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteBusWalkItem;->getSteps()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/services/route/RouteBusWalkItem;->getSteps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/route/WalkStep;

    invoke-virtual {v1}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/core/LatLonPoint;

    .line 169
    :cond_8
    invoke-static {v1}, Lcom/amap/api/maps/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    .line 171
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteBusLineItem;->getPolyline()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/core/LatLonPoint;

    invoke-static {v1}, Lcom/amap/api/maps/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    .line 173
    iget-object v3, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps/AMap;

    new-instance v7, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v7}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/amap/api/maps/model/LatLng;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v2, 0x1

    aput-object v1, v8, v2

    invoke-virtual {v7, v8}, Lcom/amap/api/maps/model/PolylineOptions;->add([Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    const/high16 v2, 0x40400000

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->getWalkColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->getBuslineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v1

    .line 178
    iget-object v2, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_9
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteBusWalkItem;->getSteps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 185
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteBusWalkItem;->getSteps()Ljava/util/List;

    move-result-object v7

    move v3, v4

    .line 187
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_e

    .line 188
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/route/WalkStep;

    .line 189
    invoke-virtual {v1}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x0

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/core/LatLonPoint;

    invoke-static {v2}, Lcom/amap/api/maps/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    .line 191
    invoke-virtual {v1}, Lcom/amap/api/services/route/WalkStep;->getRoad()Ljava/lang/String;

    move-result-object v8

    .line 192
    invoke-direct {p0, v7}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    .line 193
    invoke-virtual {v1}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/maps/overlay/a;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v10

    .line 195
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/LatLng;

    iput-object v1, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->b:Lcom/amap/api/maps/model/LatLng;

    .line 197
    if-nez v3, :cond_a

    .line 198
    iget-object v1, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps/AMap;

    new-instance v11, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v11}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v11, v2}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/amap/api/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/amap/api/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    const/high16 v8, 0x3f000000

    const/high16 v9, 0x3f000000

    invoke-virtual {v2, v8, v9}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->getWalkBitmapDescriptor()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v1

    .line 202
    iget-object v2, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->stationMarkers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_a
    iget-object v1, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps/AMap;

    new-instance v2, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v2}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    invoke-virtual {v2, v10}, Lcom/amap/api/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->getWalkColor()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->getBuslineWidth()F

    move-result v8

    invoke-virtual {v2, v8}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v1

    .line 210
    iget-object v2, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_b

    .line 213
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/LatLng;

    .line 215
    add-int/lit8 v2, v3, 0x1

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/route/WalkStep;

    invoke-virtual {v2}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x0

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/core/LatLonPoint;

    invoke-static {v2}, Lcom/amap/api/maps/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    .line 218
    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 219
    iget-object v8, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps/AMap;

    new-instance v9, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v9}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    const/4 v10, 0x2

    new-array v10, v10, [Lcom/amap/api/maps/model/LatLng;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v1, 0x1

    aput-object v2, v10, v1

    invoke-virtual {v9, v10}, Lcom/amap/api/maps/model/PolylineOptions;->add([Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->getBuslineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->getWalkColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v1

    .line 224
    iget-object v2, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_b
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_3

    .line 84
    :cond_c
    invoke-static {v2}, Lcom/amap/api/maps/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    .line 86
    invoke-static {v3}, Lcom/amap/api/maps/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v7

    .line 88
    iget-object v8, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps/AMap;

    new-instance v9, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v9}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    const/4 v10, 0x2

    new-array v10, v10, [Lcom/amap/api/maps/model/LatLng;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const/4 v2, 0x1

    aput-object v7, v10, v2

    invoke-virtual {v9, v10}, Lcom/amap/api/maps/model/PolylineOptions;->add([Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->getBuslineWidth()F

    move-result v7

    invoke-virtual {v2, v7}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->getWalkColor()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v2

    .line 93
    iget-object v7, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    goto/16 :goto_1

    .line 108
    :catch_0
    move-exception v2

    .line 109
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 262
    :catch_1
    move-exception v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 265
    :goto_4
    return-void

    .line 230
    :cond_d
    :try_start_3
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v1

    if-nez v1, :cond_e

    .line 231
    iget-object v1, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps/AMap;

    new-instance v2, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v2}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amap/api/maps/model/LatLng;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->b:Lcom/amap/api/maps/model/LatLng;

    aput-object v8, v3, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->endPoint:Lcom/amap/api/maps/model/LatLng;

    aput-object v8, v3, v7

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/PolylineOptions;->add([Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->getWalkColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->getBuslineWidth()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v1

    .line 236
    iget-object v2, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_e
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 240
    invoke-virtual {v0}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/amap/api/services/route/RouteBusLineItem;->getPolyline()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/maps/overlay/a;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 243
    invoke-virtual {v0}, Lcom/amap/api/services/route/RouteBusLineItem;->getDepartureBusStation()Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v2

    .line 245
    iget-object v3, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps/AMap;

    new-instance v7, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v7}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    invoke-virtual {v7, v1}, Lcom/amap/api/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->getBusColor()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->getBuslineWidth()F

    move-result v7

    invoke-virtual {v1, v7}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v1

    .line 248
    iget-object v3, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v1, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps/AMap;

    new-instance v3, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v2}, Lcom/amap/api/services/busline/BusStationItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/maps/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/api/services/route/RouteBusLineItem;->getBusLineName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->a(Lcom/amap/api/services/route/RouteBusLineItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amap/api/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    const/high16 v2, 0x3f000000

    const/high16 v3, 0x3f000000

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    iget-boolean v2, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->nodeIconVisible:Z

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->getBusBitmapDescriptor()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->stationMarkers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_f
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_0

    .line 260
    :cond_10
    invoke-virtual {p0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->addStartAndEndMarker()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4
.end method

.method public drawLineArrow(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)V
    .locals 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/amap/api/maps/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/amap/api/maps/model/LatLng;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->add([Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    const/high16 v2, 0x40400000

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->getBusColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/maps/overlay/BusRouteOverlay;->getBuslineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    .line 281
    return-void
.end method

.method protected getBuslineWidth()F
    .locals 1

    .prologue
    .line 293
    const/high16 v0, 0x41900000

    return v0
.end method
