.class public Lcom/android/systemui/multiwindow/MultiWindowReflector$MultiWindowManager;
.super Ljava/lang/Object;
.source "MultiWindowReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/MultiWindowReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiWindowManager"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 343
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentStatusBarVisibility()Z
    .locals 2

    .prologue
    .line 365
    const-string v0, "getCurrentStatusBarVisibility"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowReflector;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getSplitRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 345
    const-string v0, "getSplitRect"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowReflector;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public static getStatusBarHeight()I
    .locals 2

    .prologue
    .line 361
    const-string v0, "getStatusBarHeight"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowReflector;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 357
    const-string v0, "isPhone"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowReflector;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isPinup(I)Z
    .locals 4
    .parameter "winMode"

    .prologue
    .line 353
    const-string v0, "isPinup"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowReflector;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static setCurrentStatusBarVisibility(Z)V
    .locals 4
    .parameter "isVisible"

    .prologue
    .line 369
    const-string v0, "setCurrentStatusBarVisibility"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowReflector;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    return-void
.end method

.method public static setSplitRect(ILandroid/graphics/Rect;)V
    .locals 4
    .parameter "orientation"
    .parameter "splitRect"

    .prologue
    .line 349
    const-string v0, "setSplitRect"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowReflector;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    return-void
.end method
