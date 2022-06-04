# irix-dotfiles
I have done many terrible things to my 4D Irix Interactive Desktop. Lets share!

* The fantastic IMD-Evo theme is from here: https://www.gnome-look.org/p/1420871/
* The bubble theme I use only for in-app GTK icons, from here https://store.kde.org/p/1531940/
* XMMS skins come from WinAmp, good collection here https://skins.webamp.org/ They go into /usr/sgug/share/xmms/Skins/

**Some useful tidbits:**
* Preterhuman! I adapted the synergy setup here for my Barrier port https://wiki.preterhuman.net/Use_Custom_Background_on_Irix
* More neat tips, including changing window framing http://www.fsck.it/html/geek/tips/look.html
* Rad IRIX backdrops https://forums.sgi.sh/index.php?threads/create-your-own-irix-desktop-backgrounds-and-post-them-here-for-others-to-download.503/

**Some complaints?**
* The built-in Irix file manager defaults to "move" with files, hold ctrl to copy
* The Icon bar has a large minimum size

**Custom "minimize/window" icons in 4Dwm:**

- They go in /usr/lib/images, ~/.icons or another path set by ENV
- Any image file format so far seems fine, at least PNG and SGI RGB both work
- The size is weird, around 90x70 but usually smaller, and it varies. EG 85x68 for Mouse.icon
- They only get loaded once, then saved in memory, so playing with a bunch will require a login-cycle

Basic process is to use xprop on an open window, grab WM_CLASS, take an image, pop it in ~/.icons/ and name it $WM_CLASS.icon

Now to just figure out the color depth requirement, probably 8 bit, and some stuff that looks good at that size and without transparency.

WindowMaker icons might work well, they're boxy lower color and not-transparent.

EG: http://www.aiei.ch/gnustep/icons/icons.html

Check out the "Icons" section for the 4Dwm manpage
https://nixdoc.net/man-pages/IRIX/man1/Xm/4Dwm.1.html

Some apps in SGUG-RSE properly set their own icons, I'm not 100% on how that fully works yet. 
