.class public Lcom/android/systemui/statusbar/policy/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"


# static fields
.field private static final AM_PM_STYLE_GONE:I = 0x2

.field private static final AM_PM_STYLE_NORMAL:I = 0x0

.field private static final AM_PM_STYLE_SMALL:I = 0x1

.field private static final DEBUG:Z = false

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-Clock"


# instance fields
.field private AM_PM_STYLE:I

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private mExpandedHeader:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocaleChanged:Z

.field private mOldLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    iput v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    .line 151
    new-instance v1, Lcom/android/systemui/statusbar/policy/Clock$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/Clock$1;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    sget-object v1, Lcom/android/systemui/R$styleable;->Clock:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mExpandedHeader:Z

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/text/SimpleDateFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Locale;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mOldLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mOldLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/Clock;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mLocaleChanged:Z

    return p1
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 22

    .prologue
    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 239
    .local v8, context:Landroid/content/Context;
    invoke-static {v8}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    .line 253
    .local v6, b24:Z
    if-eqz v6, :cond_3

    .line 254
    const v16, 0x7f0a005d

    .line 260
    .local v16, res:I
    :goto_0
    const v2, 0xef00

    .line 261
    .local v2, MAGIC1:C
    const v3, 0xef01

    .line 264
    .local v3, MAGIC2:C
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 267
    .local v9, format:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    if-nez v6, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mLocaleChanged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 268
    :cond_0
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/Clock;->mLocaleChanged:Z

    .line 275
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 276
    const/4 v4, -0x1

    .line 277
    .local v4, a:I
    const/4 v15, 0x0

    .line 278
    .local v15, quoted:Z
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_2

    .line 279
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 281
    .local v7, c:C
    const/16 v20, 0x27

    move/from16 v0, v20

    if-ne v7, v0, :cond_1

    .line 282
    if-nez v15, :cond_4

    const/4 v15, 0x1

    .line 284
    :cond_1
    :goto_2
    if-nez v15, :cond_5

    const/16 v20, 0x61

    move/from16 v0, v20

    if-ne v7, v0, :cond_5

    .line 285
    move v4, v11

    .line 290
    .end local v7           #c:C
    :cond_2
    if-ltz v4, :cond_7

    .line 292
    move v5, v4

    .line 293
    .local v5, b:I
    :goto_3
    if-lez v4, :cond_6

    add-int/lit8 v20, v4, -0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 294
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 256
    .end local v2           #MAGIC1:C
    .end local v3           #MAGIC2:C
    .end local v4           #a:I
    .end local v5           #b:I
    .end local v9           #format:Ljava/lang/String;
    .end local v11           #i:I
    .end local v15           #quoted:Z
    .end local v16           #res:I
    :cond_3
    const v16, 0x7f0a005e

    .restart local v16       #res:I
    goto :goto_0

    .line 282
    .restart local v2       #MAGIC1:C
    .restart local v3       #MAGIC2:C
    .restart local v4       #a:I
    .restart local v7       #c:C
    .restart local v9       #format:Ljava/lang/String;
    .restart local v11       #i:I
    .restart local v15       #quoted:Z
    :cond_4
    const/4 v15, 0x0

    goto :goto_2

    .line 278
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 296
    .end local v7           #c:C
    .restart local v5       #b:I
    :cond_6
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0xef00

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "a"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0xef01

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v5, 0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 301
    .end local v4           #a:I
    .end local v5           #b:I
    .end local v11           #i:I
    .end local v15           #quoted:Z
    :cond_7
    new-instance v18, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v18, sdf:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 302
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    .line 306
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    .line 308
    .local v17, result:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    move/from16 v20, v0

    if-eqz v20, :cond_d

    .line 309
    const v20, 0xef00

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 310
    .local v12, magic1:I
    const v20, 0xef01

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 311
    .local v13, magic2:I
    if-ltz v12, :cond_d

    if-le v13, v12, :cond_d

    .line 312
    new-instance v10, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 313
    .local v10, formatted:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 314
    add-int/lit8 v20, v13, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v12, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 335
    .end local v10           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v12           #magic1:I
    .end local v13           #magic2:I
    :goto_5
    return-object v10

    .line 304
    .end local v17           #result:Ljava/lang/String;
    .end local v18           #sdf:Ljava/text/SimpleDateFormat;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v18, v0

    .restart local v18       #sdf:Ljava/text/SimpleDateFormat;
    goto :goto_4

    .line 316
    .restart local v10       #formatted:Landroid/text/SpannableStringBuilder;
    .restart local v12       #magic1:I
    .restart local v13       #magic2:I
    .restart local v17       #result:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 318
    const v14, 0x3f333333

    .line 319
    .local v14, proportion:F
    sget-boolean v20, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v20, :cond_b

    sget-boolean v20, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mExpandedHeader:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 320
    :cond_a
    const/high16 v14, 0x3f00

    .line 323
    :cond_b
    new-instance v19, Landroid/text/style/RelativeSizeSpan;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 325
    .local v19, style:Landroid/text/style/CharacterStyle;
    const/16 v20, 0x22

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v12, v13, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 328
    .end local v14           #proportion:F
    .end local v19           #style:Landroid/text/style/CharacterStyle;
    :cond_c
    add-int/lit8 v20, v13, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v13, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 329
    add-int/lit8 v20, v12, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v12, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    .end local v10           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v12           #magic1:I
    .end local v13           #magic2:I
    :cond_d
    move-object/from16 v10, v17

    .line 335
    goto :goto_5
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 108
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 110
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-nez v1, :cond_0

    .line 111
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 114
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 123
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mExpandedHeader:Z

    if-eqz v1, :cond_0

    .line 133
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    .line 139
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mOldLocale:Ljava/util/Locale;

    .line 140
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 145
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    .line 149
    :cond_0
    return-void
.end method

.method final updateClock()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 191
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 201
    .local v3, context:Landroid/content/Context;
    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    .line 202
    .local v2, b24:Z
    const/4 v8, 0x0

    .line 203
    .local v8, res:I
    const-string v1, ""

    .line 205
    .local v1, AM_PM:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 206
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    const/16 v12, 0x9

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 207
    .local v0, AMPM:I
    if-nez v0, :cond_3

    .line 208
    const v8, 0x104009a

    .line 214
    .end local v0           #AMPM:I
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 215
    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 218
    :cond_1
    const v11, 0x7f0a005c

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v12, v14

    const/4 v13, 0x1

    aput-object v1, v12, v13

    invoke-virtual {v3, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-array v12, v14, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 221
    .local v10, timeText:Ljava/lang/String;
    if-eqz v8, :cond_4

    sget-boolean v11, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v11, :cond_4

    sget-boolean v11, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-eqz v11, :cond_2

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/Clock;->mExpandedHeader:Z

    if-eqz v11, :cond_4

    .line 223
    :cond_2
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 224
    .local v4, formatted:Landroid/text/SpannableStringBuilder;
    const/high16 v7, 0x3f00

    .line 225
    .local v7, proportion:F
    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 226
    .local v5, magic1:I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    .line 227
    .local v6, magic2:I
    new-instance v9, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v9, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 228
    .local v9, style:Landroid/text/style/CharacterStyle;
    add-int v11, v5, v6

    const/16 v12, 0x22

    invoke-virtual {v4, v9, v5, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 230
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    .line 235
    .end local v4           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v5           #magic1:I
    .end local v6           #magic2:I
    .end local v7           #proportion:F
    .end local v9           #style:Landroid/text/style/CharacterStyle;
    :goto_1
    return-void

    .line 210
    .end local v10           #timeText:Ljava/lang/String;
    .restart local v0       #AMPM:I
    :cond_3
    const v8, 0x104009b

    goto :goto_0

    .line 232
    .end local v0           #AMPM:I
    .restart local v10       #timeText:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
