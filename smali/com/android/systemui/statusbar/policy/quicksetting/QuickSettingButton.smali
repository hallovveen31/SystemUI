.class public Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.super Landroid/widget/LinearLayout;
.source "QuickSettingButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;
    }
.end annotation


# static fields
.field public static final DIFF_VALUE:I = -0x2

.field public static final LINE_RESTRICTION:I = 0xb

.field public static final MIDIUM_DENSITY:I = 0xa0

.field public static final STATUS_DIM:I = 0x3

.field public static final STATUS_OFF:I = 0x2

.field public static final STATUS_OFF2:I = 0x5

.field public static final STATUS_ON:I = 0x1

.field public static final STATUS_ON2:I = 0x4


# instance fields
.field final TW_TAG:Ljava/lang/String;

.field private mActivateStatus:I

.field private mBtnImage:Landroid/widget/ImageView;

.field private mBtnLED:Landroid/widget/ImageView;

.field private mBtnText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDimIconID:I

.field public mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

.field private mOffIconID:I

.field private mOffIconID2:I

.field private mOnIconID:I

.field private mOnIconID2:I

.field mStatusBarManager:Landroid/app/StatusBarManager;

.field private mText:Ljava/lang/String;

.field private mTextID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "textId"
    .parameter "onIconId"
    .parameter "offIconId"
    .parameter "dimIconId"
    .parameter "onIconId2"
    .parameter "offIconId2"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 265
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const-string v0, "STATUSBAR-QuickSettingButton"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->TW_TAG:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    .line 51
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    .line 52
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    .line 72
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mText:Ljava/lang/String;

    .line 77
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDeviceProvisioned:Z

    .line 266
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 268
    const v0, 0x7f030033

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 269
    const v0, 0x7f0d00d6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    .line 270
    const v0, 0x7f0d00d5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    .line 271
    const v0, 0x7f0d00d7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    .line 273
    iput p3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    .line 274
    iput p4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID:I

    .line 275
    iput p5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID:I

    .line 276
    iput p6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDimIconID:I

    .line 277
    iput p7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID2:I

    .line 278
    iput p8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID2:I

    .line 279
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setGravity(I)V

    .line 281
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setFocusable(Z)V

    .line 282
    const v0, 0x7f020222

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setBackgroundResource(I)V

    .line 283
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 296
    return-void
.end method

.method private checkContentDescription()V
    .locals 5

    .prologue
    .line 320
    const/4 v0, -0x1

    .line 321
    .local v0, hasNewLine:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, str:Ljava/lang/String;
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 323
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 325
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, str1:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 328
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 330
    .end local v2           #str1:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected callActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pkg"
    .parameter "activity"

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    :goto_0
    return-void

    .line 236
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 241
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 242
    .local v0, mIntent:Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 244
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 237
    .end local v0           #mIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public changeTextSize(I)V
    .locals 7
    .parameter "diff"

    .prologue
    .line 199
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 200
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 203
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c003e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    int-to-float v4, p1

    iget v5, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v5, v5

    const/high16 v6, 0x4320

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 206
    return-void
.end method

.method public checkTextLength()V
    .locals 6

    .prologue
    const/16 v3, 0xb

    .line 210
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    .local v1, str:Ljava/lang/String;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, i:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v3, :cond_1

    :cond_0
    if-gt v0, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    if-le v2, v3, :cond_2

    .line 213
    :cond_1
    const/4 v2, -0x2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->changeTextSize(I)V

    .line 218
    :goto_0
    return-void

    .line 215
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c003e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method public getActivateStatus()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mActivateStatus:I

    return v0
.end method

.method protected isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 248
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public localeChanged()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 195
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->checkContentDescription()V

    .line 196
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 300
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 301
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;->init()V

    .line 306
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->checkTextLength()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setEnabled(Z)V

    .line 95
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mActivateStatus:I

    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_0
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setEnabled(Z)V

    .line 108
    return-void

    .line 98
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;->onClick(Z)V

    goto :goto_0

    .line 102
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;->onClick(Z)V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;->deinit()V

    .line 316
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "DismissClipboardDialogFromPhoneStatusBar"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;->onLongClick()V

    .line 117
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 118
    const/4 v1, 0x1

    return v1
.end method

.method public setActivateStatus(I)V
    .locals 4
    .parameter "activateStatus"

    .prologue
    const v3, 0x7f02021d

    const v2, 0x7f02021f

    .line 126
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mActivateStatus:I

    .line 128
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->checkContentDescription()V

    .line 135
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mActivateStatus:I

    packed-switch v0, :pswitch_data_0

    .line 171
    :goto_1
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    const-string v1, "On\n"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 140
    const-string v0, "STATUSBAR-QuickSettingButton"

    const-string v1, "Button ON"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 143
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    const-string v1, "On\n"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 146
    const-string v0, "STATUSBAR-QuickSettingButton"

    const-string v1, "Button ON2"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 149
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDimIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    const v1, 0x7f0201cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    const-string v1, "Dim\n"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 152
    const-string v0, "STATUSBAR-QuickSettingButton"

    const-string v1, "Button DIM"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 155
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    const-string v1, "Off\n"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 158
    const-string v0, "STATUSBAR-QuickSettingButton"

    const-string v1, "Button OFF"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 161
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->useSoundProfile:Z

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    const-string v1, "Off\n"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 168
    const-string v0, "STATUSBAR-QuickSettingButton"

    const-string v1, "Button OFF2"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    .line 91
    return-void
.end method

.method public setOffIconId2(I)V
    .locals 0
    .parameter "offIcon"

    .prologue
    .line 184
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID2:I

    .line 185
    return-void
.end method

.method public setOnIconId2(I)V
    .locals 0
    .parameter "onIcon"

    .prologue
    .line 188
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID2:I

    .line 189
    return-void
.end method

.method public setTextId(I)V
    .locals 0
    .parameter "textID"

    .prologue
    .line 175
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    .line 176
    return-void
.end method

.method public setTextId(ILjava/lang/String;)V
    .locals 0
    .parameter "textID"
    .parameter "text"

    .prologue
    .line 179
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    .line 180
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mText:Ljava/lang/String;

    .line 181
    return-void
.end method

.method protected statusBarCollapse()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string v0, "STATUSBAR-QuickSettingButton"

    const-string v1, "mStatusBarManager = null, wasn\'t able to collapse it"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
