.class Lcom/amap/api/mapcore/bd;
.super Landroid/view/View;
.source "WaterMarkerView.java"


# instance fields
.field a:Landroid/graphics/Rect;

.field b:I

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Paint;

.field private h:Z

.field private i:I

.field private j:Lcom/amap/api/mapcore/b;

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/bd;->g:Landroid/graphics/Paint;

    .line 31
    iput-boolean v1, p0, Lcom/amap/api/mapcore/bd;->h:Z

    .line 32
    iput v1, p0, Lcom/amap/api/mapcore/bd;->i:I

    .line 34
    iput v1, p0, Lcom/amap/api/mapcore/bd;->k:I

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/bd;->a:Landroid/graphics/Rect;

    .line 36
    const/16 v0, 0xa

    iput v0, p0, Lcom/amap/api/mapcore/bd;->b:I

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/b;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/bd;->g:Landroid/graphics/Paint;

    .line 31
    iput-boolean v1, p0, Lcom/amap/api/mapcore/bd;->h:Z

    .line 32
    iput v1, p0, Lcom/amap/api/mapcore/bd;->i:I

    .line 34
    iput v1, p0, Lcom/amap/api/mapcore/bd;->k:I

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/bd;->a:Landroid/graphics/Rect;

    .line 36
    const/16 v0, 0xa

    iput v0, p0, Lcom/amap/api/mapcore/bd;->b:I

    .line 70
    iput-object p2, p0, Lcom/amap/api/mapcore/bd;->j:Lcom/amap/api/mapcore/b;

    .line 73
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/p;->c:Lcom/amap/api/mapcore/p$a;

    sget-object v1, Lcom/amap/api/mapcore/p$a;->b:Lcom/amap/api/mapcore/p$a;

    if-ne v0, v1, :cond_0

    .line 74
    invoke-static {p1}, Lcom/amap/api/mapcore/util/v;->a(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "apl.data"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 78
    :goto_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/bd;->e:Landroid/graphics/Bitmap;

    .line 79
    iget-object v1, p0, Lcom/amap/api/mapcore/bd;->e:Landroid/graphics/Bitmap;

    sget v2, Lcom/amap/api/mapcore/p;->a:F

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/x;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/bd;->c:Landroid/graphics/Bitmap;

    .line 81
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 83
    sget-object v0, Lcom/amap/api/mapcore/p;->c:Lcom/amap/api/mapcore/p$a;

    sget-object v1, Lcom/amap/api/mapcore/p$a;->b:Lcom/amap/api/mapcore/p$a;

    if-ne v0, v1, :cond_1

    .line 84
    invoke-static {p1}, Lcom/amap/api/mapcore/util/v;->a(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "apl1.data"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 89
    :goto_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/bd;->f:Landroid/graphics/Bitmap;

    .line 90
    iget-object v1, p0, Lcom/amap/api/mapcore/bd;->f:Landroid/graphics/Bitmap;

    sget v2, Lcom/amap/api/mapcore/p;->a:F

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/x;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/bd;->d:Landroid/graphics/Bitmap;

    .line 92
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 93
    iget-object v0, p0, Lcom/amap/api/mapcore/bd;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/bd;->i:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore/bd;->g:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 100
    iget-object v0, p0, Lcom/amap/api/mapcore/bd;->g:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v0, p0, Lcom/amap/api/mapcore/bd;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    return-void

    .line 76
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/amap/api/mapcore/util/v;->a(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "ap.data"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_1
    invoke-static {p1}, Lcom/amap/api/mapcore/util/v;->a(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "ap1.data"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bd;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/amap/api/mapcore/bd;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bd;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/amap/api/mapcore/bd;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 46
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bd;->c:Landroid/graphics/Bitmap;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bd;->d:Landroid/graphics/Bitmap;

    .line 49
    iget-object v0, p0, Lcom/amap/api/mapcore/bd;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/amap/api/mapcore/bd;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bd;->e:Landroid/graphics/Bitmap;

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/bd;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 54
    iget-object v0, p0, Lcom/amap/api/mapcore/bd;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bd;->f:Landroid/graphics/Bitmap;

    .line 57
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/bd;->g:Landroid/graphics/Paint;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 127
    iput p1, p0, Lcom/amap/api/mapcore/bd;->k:I

    .line 128
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/amap/api/mapcore/bd;->h:Z

    .line 114
    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/amap/api/mapcore/bd;->g:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bd;->invalidate()V

    .line 120
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bd;->g:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/amap/api/mapcore/bd;->h:Z

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/amap/api/mapcore/bd;->d:Landroid/graphics/Bitmap;

    .line 109
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bd;->c:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public c()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 123
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/amap/api/mapcore/bd;->b:I

    invoke-virtual {p0}, Lcom/amap/api/mapcore/bd;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/amap/api/mapcore/bd;->i:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bd;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/bd;->g:Landroid/graphics/Paint;

    const-string v1, "V2.4.0"

    const/4 v2, 0x0

    const-string v3, "V2.4.0"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/mapcore/bd;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 138
    iget-object v0, p0, Lcom/amap/api/mapcore/bd;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/amap/api/mapcore/bd;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    iget v1, p0, Lcom/amap/api/mapcore/bd;->k:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 140
    iget-object v1, p0, Lcom/amap/api/mapcore/bd;->j:Lcom/amap/api/mapcore/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/b;->getWidth()I

    move-result v1

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amap/api/mapcore/bd;->b:I

    .line 147
    :goto_1
    sget-object v0, Lcom/amap/api/mapcore/p;->c:Lcom/amap/api/mapcore/p$a;

    sget-object v1, Lcom/amap/api/mapcore/p$a;->b:Lcom/amap/api/mapcore/p$a;

    if-ne v0, v1, :cond_3

    .line 148
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bd;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/bd;->b:I

    add-int/lit8 v1, v1, 0xf

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/bd;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/amap/api/mapcore/bd;->i:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x8

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore/bd;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 150
    const-string v0, "V2.4.0"

    iget-object v1, p0, Lcom/amap/api/mapcore/bd;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/amap/api/mapcore/bd;->b:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x4

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/bd;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x10

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore/bd;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 141
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/amap/api/mapcore/bd;->k:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 142
    iget-object v1, p0, Lcom/amap/api/mapcore/bd;->j:Lcom/amap/api/mapcore/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/b;->getWidth()I

    move-result v1

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/amap/api/mapcore/bd;->b:I

    goto :goto_1

    .line 144
    :cond_2
    const/16 v0, 0xa

    iput v0, p0, Lcom/amap/api/mapcore/bd;->b:I

    goto :goto_1

    .line 154
    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/bd;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/bd;->b:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/bd;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/amap/api/mapcore/bd;->i:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x8

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore/bd;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 156
    const-string v0, "V2.4.0"

    iget-object v1, p0, Lcom/amap/api/mapcore/bd;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/amap/api/mapcore/bd;->b:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/bd;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0xc

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore/bd;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
