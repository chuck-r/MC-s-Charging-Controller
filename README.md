###### MC's Charging Controller (mcc)
###### mcc README
###### versionCode = 201712272
###### MCMotherEffin' @ XDA Developers

### Into

##### It is meant for to extend Lithium batteries' life by controlling charging


### Usage

##### mcc [ ARG_1 ] [ ARG_2 ]

##### Arguments can be

-      [ STOP % ] [ START % ]
-          :- Set thresholds ( % ) used by daemon mode for turning charging ON / OFF
-          :- [ START % ] is optional
-          :-   Defaults :- 70 60

-      [ --shut ] [ SHUT % ]
-          :- Set threshold ( % ) for automatically powering the device off
-          :-   Default  :- 20

-      [ --keep ] [ KEEP % ]
-          :- Keep battery level at certain [ KEEP % ]

-      [ --start ] [ % / time ]
-          :- Enable charging for given time / until certain % 
-          :- [ % / time ] is optional
-          :-   Time can be 30 ( 30 seconds ),
-                           8m (  8 minutes ),
-                           2h (   2 hours  );

-      [ --stop ] [ % / time ]
-          :- Same as [ --start ], except for charging is disabled

-      [ --daemon ]
-          :- Toggle MAGISK daemon mode ON / OFF
-          :-   Default  :- ON

-      [ --autoshut ]
-          :- Toggle automatic power-off ON / OFF
-          :-   Default  :- ON

-      [ --log ]
-          :- Toggle verbose logs ON / OFF
-          :-   Default  :- OFF

-      [ --defaults ]
-          :- Reset all thresholds to defaults

-      [ --info ]
-          :- Show some useful information

-      [ --breset ]
-          :- Reset battery statistics

-      [ --rconf ]
-          :- Re-configure kernel references

-      [ --debug ]
-          :- Gather debugging data

-      [ --help ]
-          :- Show this help message


##### Notes :- 

*    --  Running just "mcc" will reset up_threshold and down_threshold to defaults

*    --  It requires your device to be charging while installing / [ --rconf ] for to detect where to hook into kernel

### Changelog

##### 2017.12.27-2

*  -- Fixed error when not root

*  -- Fixed recovery UI

*  -- Minor improvements

##### 2017.12.27-1

*  -- Better control when multiple switches available

*  -- Fixed minor codes

##### 2017.12.25-2

*  -- Fixed, and even, better kernel switch detection

##### 2017.12.25-1

*  -- First public release
