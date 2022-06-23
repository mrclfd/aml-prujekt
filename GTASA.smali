.class public Lru/unisamp_mobile/game/GTASA;
.super Lcom/wardrumstudios/utils/WarMedia;
.source ""


# static fields
.field public static gtasaSelf:Lru/unisamp_mobile/game/GTASA;

.field static vmVersion:Ljava/lang/String;


# instance fields
.field private once:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "**** Loading SO\'s"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_7
    const-string v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/unisamp_mobile/game/GTASA;->vmVersion:Ljava/lang/String;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vmVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lru/unisamp_mobile/game/GTASA;->vmVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "ImmEmulatorJ"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_7 .. :try_end_2c} :catch_2c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7 .. :try_end_2c} :catch_2c

    :catch_2c
    const-string v0, "GTASA"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "AML"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/wardrumstudios/utils/WarMedia;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/unisamp_mobile/game/GTASA;->once:Z

    return-void
.end method

.method private initialiseClientInfo()V
    .registers 1

    return-void
.end method

.method public static staticEnterSocialClub()V
    .registers 1

    sget-object v0, Lru/unisamp_mobile/game/GTASA;->gtasaSelf:Lru/unisamp_mobile/game/GTASA;

    invoke-virtual {v0}, Lru/unisamp_mobile/game/GTASA;->EnterSocialClub()V

    return-void
.end method

.method public static staticExitSocialClub()V
    .registers 1

    sget-object v0, Lru/unisamp_mobile/game/GTASA;->gtasaSelf:Lru/unisamp_mobile/game/GTASA;

    invoke-virtual {v0}, Lru/unisamp_mobile/game/GTASA;->ExitSocialClub()V

    return-void
.end method


# virtual methods
.method public AfterDownloadFunction()V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "**** AfterDownloadFunction"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public CustomLoadFunction()Z
    .registers 2

    sget-object v0, Lru/unisamp_mobile/game/GTASA;->gtasaSelf:Lru/unisamp_mobile/game/GTASA;

    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/WarMedia;->CheckIfNeedsReadPermission(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public EnterSocialClub()V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "**** EnterSocialClub"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public ExitSocialClub()V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "**** ExitSocialClub"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public ServiceAppCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public ServiceAppCommandValue(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public native main()V
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/nvidia/devtech/NvEventQueueActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "begi_otsyda"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fdfef8itfh94t6ywefgiewfwrdi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_16
    iget-boolean v0, p0, Lru/unisamp_mobile/game/GTASA;->once:Z

    const/4 v1, 0x1

    if-nez v0, :cond_20

    invoke-direct {p0}, Lru/unisamp_mobile/game/GTASA;->initialiseClientInfo()V

    iput-boolean v1, p0, Lru/unisamp_mobile/game/GTASA;->once:Z

    :cond_20
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "GTASA onCreate"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sput-object p0, Lru/unisamp_mobile/game/GTASA;->gtasaSelf:Lru/unisamp_mobile/game/GTASA;

    iput-boolean v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->wantsMultitouch:Z

    iput-boolean v1, p0, Lcom/nvidia/devtech/NvEventQueueActivity;->wantsAccelerometer:Z

    invoke-super {p0, p1}, Lcom/wardrumstudios/utils/WarMedia;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "GTASA onDestroy"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/nvidia/devtech/NvEventQueueActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "GTASA onPause"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->onPause()V

    return-void
.end method

.method public onRestart()V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "GTASA onRestart"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->onRestart()V

    return-void
.end method

.method public onResume()V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "GTASA onResume"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->onResume()V

    return-void
.end method

.method public onStart()V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "GTASA onStart"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/appcompat/app/d;->onStart()V

    return-void
.end method

.method public onStop()V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "GTASA onStop"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/nvidia/devtech/NvEventQueueActivity;->onStop()V

    return-void
.end method

.method public native setCurrentScreenSize(II)V
.end method
