#!/bin/bash

CWD=$(pwd)
read -e -p "Enter the folder where to save the Extracted Features files: [$CWD] " DEST
DEST=${DEST:-$CWD}

if [ ! -d "$DEST" ]; then
   read -e -p "Folder [$DEST] does not exist - create? [Y/n] " YN
   YN=${YN:-Y}
   case $YN in
      [yY][eE][sS]|[yY])
         mkdir -p "$DEST" || exit $?
         ;;
      *)
         echo "Aborting."
         exit 2
         ;;
   esac
fi

cat << 'EOF' | rsync -avh --no-perms --no-owner --stats --files-from=- data.analytics.hathitrust.org::features "$DEST"
uiuo/pairtree_root/ar/k+/=1/39/60/=t/3w/s9/bx/1r/ark+=13960=t3ws9bx1r/uiuo.ark+=13960=t3ws9bx1r.json.bz2
uva/pairtree_root/x0/00/93/67/48/x000936748/uva.x000936748.json.bz2
nyp/pairtree_root/33/43/30/06/07/74/02/33433006077402/nyp.33433006077402.json.bz2
nyp/pairtree_root/33/43/30/40/40/58/82/33433040405882/nyp.33433040405882.json.bz2
mdp/pairtree_root/39/01/50/32/85/53/74/39015032855374/mdp.39015032855374.json.bz2
nyp/pairtree_root/33/43/30/40/40/54/94/33433040405494/nyp.33433040405494.json.bz2
nyp/pairtree_root/33/43/30/40/40/54/60/33433040405460/nyp.33433040405460.json.bz2
uc2/pairtree_root/ar/k+/=1/39/60/=t/06/w9/8v/9w/ark+=13960=t06w98v9w/uc2.ark+=13960=t06w98v9w.json.bz2
uc2/pairtree_root/ar/k+/=1/39/60/=t/7p/n9/5f/37/ark+=13960=t7pn95f37/uc2.ark+=13960=t7pn95f37.json.bz2
uc2/pairtree_root/ar/k+/=1/39/60/=t/79/s1/tn/65/ark+=13960=t79s1tn65/uc2.ark+=13960=t79s1tn65.json.bz2
uiuo/pairtree_root/ar/k+/=1/39/60/=t/6w/w7/r8/2s/ark+=13960=t6ww7r82s/uiuo.ark+=13960=t6ww7r82s.json.bz2
nyp/pairtree_root/33/43/30/40/40/58/58/33433040405858/nyp.33433040405858.json.bz2
uva/pairtree_root/x0/00/27/48/33/x000274833/uva.x000274833.json.bz2
uc2/pairtree_root/ar/k+/=1/39/60/=t/5d/b8/2v/88/ark+=13960=t5db82v88/uc2.ark+=13960=t5db82v88.json.bz2
njp/pairtree_root/32/10/10/68/57/37/22/32101068573722/njp.32101068573722.json.bz2
mdp/pairtree_root/39/01/50/18/61/02/64/39015018610264/mdp.39015018610264.json.bz2
uc2/pairtree_root/ar/k+/=1/39/60/=t/2z/31/r5/56/ark+=13960=t2z31r556/uc2.ark+=13960=t2z31r556.json.bz2
nyp/pairtree_root/33/43/30/06/07/74/28/33433006077428/nyp.33433006077428.json.bz2
uc1/pairtree_root/b3/32/44/34/b3324434/uc1.b3324434.json.bz2
uiuo/pairtree_root/ar/k+/=1/39/60/=t/95/71/c6/6r/ark+=13960=t9571c66r/uiuo.ark+=13960=t9571c66r.json.bz2
nyp/pairtree_root/33/43/30/40/40/55/51/33433040405551/nyp.33433040405551.json.bz2
mdp/pairtree_root/39/01/50/22/37/84/86/39015022378486/mdp.39015022378486.json.bz2
uc2/pairtree_root/ar/k+/=1/39/60/=t/8f/f4/3d/6j/ark+=13960=t8ff43d6j/uc2.ark+=13960=t8ff43d6j.json.bz2
uc2/pairtree_root/ar/k+/=1/39/60/=t/1s/f2/p5/7b/ark+=13960=t1sf2p57b/uc2.ark+=13960=t1sf2p57b.json.bz2
uc2/pairtree_root/ar/k+/=1/39/60/=t/46/q1/wb/51/ark+=13960=t46q1wb51/uc2.ark+=13960=t46q1wb51.json.bz2
uc2/pairtree_root/ar/k+/=1/39/60/=t/9m/32/r9/6p/ark+=13960=t9m32r96p/uc2.ark+=13960=t9m32r96p.json.bz2
nyp/pairtree_root/33/43/30/40/40/55/02/33433040405502/nyp.33433040405502.json.bz2
nyp/pairtree_root/33/43/30/40/40/54/78/33433040405478/nyp.33433040405478.json.bz2
nyp/pairtree_root/33/43/30/40/40/59/16/33433040405916/nyp.33433040405916.json.bz2
njp/pairtree_root/32/10/10/76/47/90/86/32101076479086/njp.32101076479086.json.bz2
uiuo/pairtree_root/ar/k+/=1/39/60/=t/96/68/t3/7w/ark+=13960=t9668t37w/uiuo.ark+=13960=t9668t37w.json.bz2
nyp/pairtree_root/33/43/30/75/80/22/68/33433075802268/nyp.33433075802268.json.bz2
nyp/pairtree_root/33/43/30/40/40/58/90/33433040405890/nyp.33433040405890.json.bz2
nyp/pairtree_root/33/43/30/40/40/58/33/33433040405833/nyp.33433040405833.json.bz2
uc2/pairtree_root/ar/k+/=1/39/60/=t/4q/j7/g4/24/ark+=13960=t4qj7g424/uc2.ark+=13960=t4qj7g424.json.bz2
nyp/pairtree_root/33/43/30/06/07/73/94/33433006077394/nyp.33433006077394.json.bz2
nyp/pairtree_root/33/43/30/40/40/59/40/33433040405940/nyp.33433040405940.json.bz2
nyp/pairtree_root/33/43/30/40/40/55/28/33433040405528/nyp.33433040405528.json.bz2
nyp/pairtree_root/33/43/30/40/40/59/08/33433040405908/nyp.33433040405908.json.bz2
nyp/pairtree_root/33/43/30/40/40/59/24/33433040405924/nyp.33433040405924.json.bz2
nyp/pairtree_root/33/43/30/40/40/58/09/33433040405809/nyp.33433040405809.json.bz2
uc2/pairtree_root/ar/k+/=1/39/60/=t/6s/x6/cv/79/ark+=13960=t6sx6cv79/uc2.ark+=13960=t6sx6cv79.json.bz2
uc2/pairtree_root/ar/k+/=1/39/60/=t/91/83/cw/34/ark+=13960=t9183cw34/uc2.ark+=13960=t9183cw34.json.bz2
nyp/pairtree_root/33/43/30/40/40/55/44/33433040405544/nyp.33433040405544.json.bz2
njp/pairtree_root/32/10/10/67/63/26/44/32101067632644/njp.32101067632644.json.bz2
uc2/pairtree_root/ar/k+/=1/39/60/=t/27/94/3f/1p/ark+=13960=t27943f1p/uc2.ark+=13960=t27943f1p.json.bz2
mdp/pairtree_root/39/01/50/65/44/11/75/39015065441175/mdp.39015065441175.json.bz2
uc1/pairtree_root/32/10/60/07/21/12/35/32106007211235/uc1.32106007211235.json.bz2
uc1/pairtree_root/$b/71/30/53/$b713053/uc1.$b713053.json.bz2
uc2/pairtree_root/ar/k+/=1/39/60/=t/51/g0/mm/95/ark+=13960=t51g0mm95/uc2.ark+=13960=t51g0mm95.json.bz2
EOF