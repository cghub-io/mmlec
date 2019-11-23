//Maya ASCII 2018ff09 scene
//Name: object_tracking_indepth.ma
//Last modified: 토, 11월 23, 2019 10:17:31 오후
//Codeset: UTF-8
requires maya "2018ff09";
requires "mtoa" "3.1.2.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201903222215-65bada0e52";
fileInfo "osv" "Linux 3.10.0-1062.1.2.el7.x86_64 #1 SMP Mon Sep 30 14:19:46 UTC 2019 x86_64";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "A780A2C4-4CEA-D09D-EF6D-EABEC1107B1A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.87271379773489 302.29568380476024 467.39020907222709 ;
	setAttr ".r" -type "double3" -44.73835272960261 16.599999999999888 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "54A30C56-4AE5-358F-CFAA-B6AA8C46CC61";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 561.40412495675162;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "F0001706-4F1E-475B-C442-E998A419A3CB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "BF5C6CB6-454C-577F-5529-4B94FF232ADE";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "63E3B4DB-4113-F961-77ED-FA8131382736";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "F384555B-406D-8382-93AE-7BB13017AD6D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "12DBFF2D-4502-74E4-9255-4BADF18D0B60";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "6DAA6ACF-4DF6-EFE6-0FD5-38B53035FC6A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Scene_cam";
	rename -uid "0FD0CA64-41DF-C118-C52B-37A61FB2D5FE";
	setAttr ".ro" 2;
createNode transform -n "camera_1_1" -p "Scene_cam";
	rename -uid "3787185D-44F2-C120-5B4A-43BC9FF24CA1";
	setAttr ".ro" 2;
createNode camera -n "camera_1_1Shape1" -p "camera_1_1";
	rename -uid "E388BCC1-4B52-CB6A-6375-518D0868DC8C";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.417322834645669 0.797244094488189 ;
	setAttr ".ff" 3;
	setAttr ".ncp" 0.01;
	setAttr ".sa" 180;
	setAttr ".imn" -type "string" "camera_1_1";
	setAttr ".den" -type "string" "camera_1_1_depth";
	setAttr ".man" -type "string" "camera_1_1_mask";
	setAttr ".lls" 5;
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "imagePlane1" -p "camera_1_1Shape1";
	rename -uid "5A94543A-4E1D-CA19-1CA6-77A6F767AF8A";
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "554FDA92-4FE8-5512-A3BB-019DE8DA8681";
	setAttr -k off ".v";
	setAttr ".fc" 102;
	setAttr ".imn" -type "string" "/home/hko/mmlec/week4/plate/png/object_tracking.0001.png";
	setAttr ".ufe" yes;
	setAttr ".cov" -type "short2" 1920 1080 ;
	setAttr ".f" 4;
	setAttr ".dic" yes;
	setAttr ".d" 4500;
	setAttr ".s" -type "double2" 1.417322834645669 0.797244094488189 ;
	setAttr ".w" 19.199999999999996;
	setAttr ".h" 10.799999999999999;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "cameraPGroup_pgroup_1_1" -p "Scene_cam";
	rename -uid "8527FE4A-41C3-CCA4-EB8D-8D9C445E21B7";
	setAttr ".ro" 2;
createNode transform -n "plocator368" -p "cameraPGroup_pgroup_1_1";
	rename -uid "7834EDE1-483E-F071-79E4-C3BC1CA17BA1";
	setAttr ".t" -type "double3" 187.5 -1.1099999999999999e-13 -218.75 ;
createNode locator -n "plocator368Shape" -p "plocator368";
	rename -uid "C6F74860-49A4-471E-1E43-589CF15B3D3F";
	setAttr -k off ".v";
createNode transform -n "plocator370" -p "cameraPGroup_pgroup_1_1";
	rename -uid "5F24B8E7-4681-B95C-D118-66B595D2B031";
	setAttr ".t" -type "double3" 187.5 -1.1099999999999999e-13 -156.25 ;
createNode locator -n "plocator370Shape" -p "plocator370";
	rename -uid "D8EAC4F5-41B8-A8E9-54D6-DC9DEC0F906E";
	setAttr -k off ".v";
createNode transform -n "plocator388" -p "cameraPGroup_pgroup_1_1";
	rename -uid "090B725A-4975-7953-6568-E7BDBF7A413D";
	setAttr ".t" -type "double3" 156.25 -1.1099999999999999e-13 -250 ;
createNode locator -n "plocator388Shape" -p "plocator388";
	rename -uid "8518CEC8-4179-DBD2-2174-D89CE57471A7";
	setAttr -k off ".v";
createNode transform -n "plocator389" -p "cameraPGroup_pgroup_1_1";
	rename -uid "1A31A77A-4ED5-9233-EE7E-DDBE8F757DBB";
	setAttr ".t" -type "double3" 156.25 -1.1099999999999999e-13 -218.75 ;
createNode locator -n "plocator389Shape" -p "plocator389";
	rename -uid "CC5B8E6C-490D-8642-C1E9-B689D0363F2A";
	setAttr -k off ".v";
createNode transform -n "plocator390" -p "cameraPGroup_pgroup_1_1";
	rename -uid "FF3B8550-4060-29B8-7D0E-60A68C1BEFBD";
	setAttr ".t" -type "double3" 156.25 -1.1099999999999999e-13 -187.5 ;
createNode locator -n "plocator390Shape" -p "plocator390";
	rename -uid "8C29EEA3-4504-9C0D-9B8C-189273C9F2D7";
	setAttr -k off ".v";
createNode transform -n "plocator391" -p "cameraPGroup_pgroup_1_1";
	rename -uid "0B2EBAA4-409F-E11F-27A0-80B84DDAD103";
	setAttr ".t" -type "double3" 156.25 -1.1099999999999999e-13 -156.25 ;
createNode locator -n "plocator391Shape" -p "plocator391";
	rename -uid "2B730BA6-4B14-0E6E-0BE8-C7B9A4DEC06A";
	setAttr -k off ".v";
createNode transform -n "plocator433" -p "cameraPGroup_pgroup_1_1";
	rename -uid "A52013D3-447F-7A46-B6D1-57975BE947B7";
	setAttr ".t" -type "double3" 125 -1.1099999999999999e-13 -250 ;
createNode locator -n "plocator433Shape" -p "plocator433";
	rename -uid "8740A793-4F9E-F615-38A8-479F3E095F08";
	setAttr -k off ".v";
createNode transform -n "plocator434" -p "cameraPGroup_pgroup_1_1";
	rename -uid "40B9782C-47C9-BE35-C076-90AE73F13915";
	setAttr ".t" -type "double3" 125 -1.1099999999999999e-13 -218.75 ;
createNode locator -n "plocator434Shape" -p "plocator434";
	rename -uid "77CE55BA-4875-EBD2-A178-7C8F8E5A0A11";
	setAttr -k off ".v";
createNode transform -n "plocator435" -p "cameraPGroup_pgroup_1_1";
	rename -uid "FA4BCDB3-46D7-7AF8-B603-39983C8EF287";
	setAttr ".t" -type "double3" 125 -1.1099999999999999e-13 -187.5 ;
createNode locator -n "plocator435Shape" -p "plocator435";
	rename -uid "5588AE8F-44B8-D8B3-7239-0687866910BB";
	setAttr -k off ".v";
createNode transform -n "plocator436" -p "cameraPGroup_pgroup_1_1";
	rename -uid "1092FC06-444E-DA23-ADBB-39BDB03B1049";
	setAttr ".t" -type "double3" 125 -1.1099999999999999e-13 -156.25 ;
createNode locator -n "plocator436Shape" -p "plocator436";
	rename -uid "6BFA83A1-41A0-240B-5C9A-C085A75E727C";
	setAttr -k off ".v";
createNode transform -n "plocator437" -p "cameraPGroup_pgroup_1_1";
	rename -uid "9C80F206-4AA0-AFC3-F945-DAA4D5EFC8C8";
	setAttr ".t" -type "double3" 125 -1.1099999999999999e-13 -125 ;
createNode locator -n "plocator437Shape" -p "plocator437";
	rename -uid "8C0CB54E-41DD-9D7B-6659-14B1B48B732E";
	setAttr -k off ".v";
createNode transform -n "plocator438" -p "cameraPGroup_pgroup_1_1";
	rename -uid "0F5A57D5-4DDC-A75F-556B-3683B768003B";
	setAttr ".t" -type "double3" 125 -1.1099999999999999e-13 -93.75 ;
createNode locator -n "plocator438Shape" -p "plocator438";
	rename -uid "CC8D3DB3-4CA9-7BE5-3FA4-918703159BA5";
	setAttr -k off ".v";
createNode transform -n "plocator454" -p "cameraPGroup_pgroup_1_1";
	rename -uid "77687B0C-4E3C-9877-9DAC-DFA246188099";
	setAttr ".t" -type "double3" 93.75 -1.1099999999999999e-13 -281.25 ;
createNode locator -n "plocator454Shape" -p "plocator454";
	rename -uid "02991711-4094-C04D-30D5-E2BEA0F9604D";
	setAttr -k off ".v";
createNode transform -n "plocator455" -p "cameraPGroup_pgroup_1_1";
	rename -uid "8F4065C7-44E6-0D86-E7CF-04B9C8A07864";
	setAttr ".t" -type "double3" 93.75 -1.1099999999999999e-13 -250 ;
createNode locator -n "plocator455Shape" -p "plocator455";
	rename -uid "69F816B4-4507-EFDF-D241-9381AB278E68";
	setAttr -k off ".v";
createNode transform -n "plocator456" -p "cameraPGroup_pgroup_1_1";
	rename -uid "2F7A0B16-4F03-F87C-9548-82BB80CE7008";
	setAttr ".t" -type "double3" 93.75 -1.1099999999999999e-13 -218.75 ;
createNode locator -n "plocator456Shape" -p "plocator456";
	rename -uid "8C0C3050-432E-C189-C7FB-63B60865808A";
	setAttr -k off ".v";
createNode transform -n "plocator457" -p "cameraPGroup_pgroup_1_1";
	rename -uid "EE7BC761-405A-8A87-943F-76A42C0C18A8";
	setAttr ".t" -type "double3" 93.75 -1.1099999999999999e-13 -187.5 ;
createNode locator -n "plocator457Shape" -p "plocator457";
	rename -uid "F692767B-4F9C-4B90-B7D3-F28B8A840750";
	setAttr -k off ".v";
createNode transform -n "plocator458" -p "cameraPGroup_pgroup_1_1";
	rename -uid "E2B47868-4407-EB25-27F0-769DBC407123";
	setAttr ".t" -type "double3" 93.75 -1.1099999999999999e-13 -156.25 ;
createNode locator -n "plocator458Shape" -p "plocator458";
	rename -uid "C31811FD-4EE9-249D-F4A6-1CB8AFE7634E";
	setAttr -k off ".v";
createNode transform -n "plocator459" -p "cameraPGroup_pgroup_1_1";
	rename -uid "54F8A984-4FCE-BD5E-FE95-47AFC69396EA";
	setAttr ".t" -type "double3" 93.75 -1.1099999999999999e-13 -125 ;
createNode locator -n "plocator459Shape" -p "plocator459";
	rename -uid "511CECDD-424B-9614-9227-B4B98A8863C5";
	setAttr -k off ".v";
createNode transform -n "plocator460" -p "cameraPGroup_pgroup_1_1";
	rename -uid "40CDBBCB-49A0-5B6F-9423-64AD34A5B345";
	setAttr ".t" -type "double3" 93.75 -1.1099999999999999e-13 -93.75 ;
createNode locator -n "plocator460Shape" -p "plocator460";
	rename -uid "B9EF6038-456D-11CA-FB3B-F295B265AF14";
	setAttr -k off ".v";
createNode transform -n "plocator461" -p "cameraPGroup_pgroup_1_1";
	rename -uid "19396F58-4163-0497-40DD-D1819C23C215";
	setAttr ".t" -type "double3" 93.75 -1.1099999999999999e-13 -62.5 ;
createNode locator -n "plocator461Shape" -p "plocator461";
	rename -uid "F60E375D-4992-3633-F21D-5CAD487472D7";
	setAttr -k off ".v";
createNode transform -n "plocator462" -p "cameraPGroup_pgroup_1_1";
	rename -uid "2803705F-459B-4101-A511-60B9057F2DFE";
	setAttr ".t" -type "double3" 93.75 -1.1099999999999999e-13 -31.25 ;
createNode locator -n "plocator462Shape" -p "plocator462";
	rename -uid "2EA9AA66-49EA-F761-6B06-E586093C8BE9";
	setAttr -k off ".v";
createNode transform -n "plocator463" -p "cameraPGroup_pgroup_1_1";
	rename -uid "534F214A-45C0-3E47-2DAA-5EB87CA84F51";
	setAttr ".t" -type "double3" 93.75 -1.1099999999999999e-13 0 ;
createNode locator -n "plocator463Shape" -p "plocator463";
	rename -uid "B98E2647-4618-2E0F-91B1-41B28B3FEEA2";
	setAttr -k off ".v";
createNode transform -n "plocator478" -p "cameraPGroup_pgroup_1_1";
	rename -uid "C1C4CC3D-47D1-AC28-C8E5-31B6E6C37875";
	setAttr ".t" -type "double3" 93.75 -1.1099999999999999e-13 125 ;
createNode locator -n "plocator478Shape" -p "plocator478";
	rename -uid "EA15414F-47C2-F65D-A91F-C28F324EB6EA";
	setAttr -k off ".v";
createNode transform -n "plocator480" -p "cameraPGroup_pgroup_1_1";
	rename -uid "24767AEB-4BE4-2D77-BCC0-77BEA052920B";
	setAttr ".t" -type "double3" 93.75 -1.1099999999999999e-13 187.5 ;
createNode locator -n "plocator480Shape" -p "plocator480";
	rename -uid "0268E4E5-4145-F0BA-3B2B-3FB615E5D40E";
	setAttr -k off ".v";
createNode transform -n "plocator481" -p "cameraPGroup_pgroup_1_1";
	rename -uid "C44A30C2-46B1-58E1-8EED-E1811B3FFCB1";
	setAttr ".t" -type "double3" 93.75 -1.1099999999999999e-13 218.75 ;
createNode locator -n "plocator481Shape" -p "plocator481";
	rename -uid "BE280328-4AA2-332B-B831-10BFB6A28E6D";
	setAttr -k off ".v";
createNode transform -n "plocator495" -p "cameraPGroup_pgroup_1_1";
	rename -uid "8ECD5ABB-4AFA-2C84-F46E-7988492CE342";
	setAttr ".t" -type "double3" 62.5 -1.1099999999999999e-13 0 ;
createNode locator -n "plocator495Shape" -p "plocator495";
	rename -uid "E401D8FB-45B0-F867-B43C-04A7CD031449";
	setAttr -k off ".v";
createNode transform -n "plocator496" -p "cameraPGroup_pgroup_1_1";
	rename -uid "FE9CAB5A-4D67-14AE-5525-23A8BE19D92A";
	setAttr ".t" -type "double3" 62.5 -1.1099999999999999e-13 31.25 ;
createNode locator -n "plocator496Shape" -p "plocator496";
	rename -uid "57F5A7F3-41D9-7105-E696-AF81832447D9";
	setAttr -k off ".v";
createNode transform -n "plocator497" -p "cameraPGroup_pgroup_1_1";
	rename -uid "DFD0D103-4053-7C54-9A03-9A84D9B403D5";
	setAttr ".t" -type "double3" 62.5 -1.1099999999999999e-13 62.5 ;
createNode locator -n "plocator497Shape" -p "plocator497";
	rename -uid "93CA1492-4675-FFD1-F470-42B194F6D01B";
	setAttr -k off ".v";
createNode transform -n "plocator498" -p "cameraPGroup_pgroup_1_1";
	rename -uid "B4DA1422-4239-D400-681D-85BD0699C9B2";
	setAttr ".t" -type "double3" 62.5 -1.1099999999999999e-13 93.75 ;
createNode locator -n "plocator498Shape" -p "plocator498";
	rename -uid "F88F6F1C-4CC7-8135-F355-E89813A94569";
	setAttr -k off ".v";
createNode transform -n "plocator499" -p "cameraPGroup_pgroup_1_1";
	rename -uid "5CAFDEC6-429D-ADDC-A71A-E6AFB0E16D19";
	setAttr ".t" -type "double3" 62.5 -1.1099999999999999e-13 125 ;
createNode locator -n "plocator499Shape" -p "plocator499";
	rename -uid "32144CEF-43CF-AE26-4472-759B2BA879F8";
	setAttr -k off ".v";
createNode transform -n "plocator500" -p "cameraPGroup_pgroup_1_1";
	rename -uid "BA0F20BA-4059-69A7-4619-9089688F7C97";
	setAttr ".t" -type "double3" 62.5 -1.1099999999999999e-13 156.25 ;
createNode locator -n "plocator500Shape" -p "plocator500";
	rename -uid "826514D0-448B-3644-B514-FE950B8889BF";
	setAttr -k off ".v";
createNode transform -n "plocator501" -p "cameraPGroup_pgroup_1_1";
	rename -uid "8F0DA74E-47A7-DC63-DD47-AB9923115DB6";
	setAttr ".t" -type "double3" 62.5 -1.1099999999999999e-13 187.5 ;
createNode locator -n "plocator501Shape" -p "plocator501";
	rename -uid "40B96732-4087-6F01-CFE5-C397F896F32A";
	setAttr -k off ".v";
createNode transform -n "plocator502" -p "cameraPGroup_pgroup_1_1";
	rename -uid "6E217DDC-4761-5999-0DEE-AEA426B0CD78";
	setAttr ".t" -type "double3" 62.5 -1.1099999999999999e-13 218.75 ;
createNode locator -n "plocator502Shape" -p "plocator502";
	rename -uid "184BF83A-4FAE-F665-21B9-6BBCD0EBE464";
	setAttr -k off ".v";
createNode transform -n "plocator503" -p "cameraPGroup_pgroup_1_1";
	rename -uid "DC6C433A-4B3D-E5E7-99AA-4095C5FD4E66";
	setAttr ".t" -type "double3" 62.5 -1.1099999999999999e-13 250 ;
createNode locator -n "plocator503Shape" -p "plocator503";
	rename -uid "0AF5EC6C-4DF8-5BF1-B8F4-F08F1C0B6D1C";
	setAttr -k off ".v";
createNode transform -n "plocator508" -p "cameraPGroup_pgroup_1_1";
	rename -uid "422A48C7-4392-7276-8FF5-45B5C64F3618";
	setAttr ".t" -type "double3" 62.5 -1.1099999999999999e-13 -312.5 ;
createNode locator -n "plocator508Shape" -p "plocator508";
	rename -uid "7D66BA29-4FAA-437B-9D2E-68A0232D0036";
	setAttr -k off ".v";
createNode transform -n "plocator509" -p "cameraPGroup_pgroup_1_1";
	rename -uid "D0341403-4EE0-02A4-22B0-7C8562389F36";
	setAttr ".t" -type "double3" 62.5 -1.1099999999999999e-13 -281.25 ;
createNode locator -n "plocator509Shape" -p "plocator509";
	rename -uid "EC315516-4B7B-00DD-6B86-86AD8F789985";
	setAttr -k off ".v";
createNode transform -n "plocator510" -p "cameraPGroup_pgroup_1_1";
	rename -uid "CAEDCF1B-4A2B-F433-5326-069909A8D91E";
	setAttr ".t" -type "double3" 62.5 -1.1099999999999999e-13 -250 ;
createNode locator -n "plocator510Shape" -p "plocator510";
	rename -uid "EAFC1FB6-4932-BBDC-70CB-FE945A413F30";
	setAttr -k off ".v";
createNode transform -n "plocator511" -p "cameraPGroup_pgroup_1_1";
	rename -uid "B4D01377-44FD-6311-53F7-1B89A5A75AC6";
	setAttr ".t" -type "double3" 62.5 -1.1099999999999999e-13 -218.75 ;
createNode locator -n "plocator511Shape" -p "plocator511";
	rename -uid "D15B0A81-41F9-12F2-911E-09803B76C083";
	setAttr -k off ".v";
createNode transform -n "plocator512" -p "cameraPGroup_pgroup_1_1";
	rename -uid "232AA564-4F9A-0BBA-5BAF-BEAB425CB76A";
	setAttr ".t" -type "double3" 62.5 -1.1099999999999999e-13 -187.5 ;
createNode locator -n "plocator512Shape" -p "plocator512";
	rename -uid "56723795-49E7-051E-25B7-AAB772806513";
	setAttr -k off ".v";
createNode transform -n "plocator513" -p "cameraPGroup_pgroup_1_1";
	rename -uid "F930EA31-456D-3F0F-C09E-0584B5AD4135";
	setAttr ".t" -type "double3" 62.5 -1.1099999999999999e-13 -156.25 ;
createNode locator -n "plocator513Shape" -p "plocator513";
	rename -uid "4ACE33CF-410B-B4DB-6947-5794E459D3B3";
	setAttr -k off ".v";
createNode transform -n "plocator514" -p "cameraPGroup_pgroup_1_1";
	rename -uid "CEE1AF3D-43E7-FBBA-19EE-31B09424BB16";
	setAttr ".t" -type "double3" 62.5 -1.1099999999999999e-13 -125 ;
createNode locator -n "plocator514Shape" -p "plocator514";
	rename -uid "874C821E-4119-DD66-F98F-209B2FE9FEAB";
	setAttr -k off ".v";
createNode transform -n "plocator515" -p "cameraPGroup_pgroup_1_1";
	rename -uid "A0B8AAFD-4AD6-718D-22CE-2FB827A28868";
	setAttr ".t" -type "double3" 62.5 -1.1099999999999999e-13 -93.75 ;
createNode locator -n "plocator515Shape" -p "plocator515";
	rename -uid "6185D1AA-4691-416A-BD71-269F5E96F7FF";
	setAttr -k off ".v";
createNode transform -n "plocator516" -p "cameraPGroup_pgroup_1_1";
	rename -uid "75275F1F-4E75-B3F8-37F2-37AF4403E126";
	setAttr ".t" -type "double3" 62.5 -1.1099999999999999e-13 -62.5 ;
createNode locator -n "plocator516Shape" -p "plocator516";
	rename -uid "EC289E09-4483-160D-7916-BEBCE740F46D";
	setAttr -k off ".v";
createNode transform -n "plocator517" -p "cameraPGroup_pgroup_1_1";
	rename -uid "B2BF80D1-4496-744E-AF87-6189A9C61ABA";
	setAttr ".t" -type "double3" 62.5 -1.1099999999999999e-13 -31.25 ;
createNode locator -n "plocator517Shape" -p "plocator517";
	rename -uid "F46F15E4-49FD-3898-3C57-82BBE5FE4611";
	setAttr -k off ".v";
createNode transform -n "plocator529" -p "cameraPGroup_pgroup_1_1";
	rename -uid "63F05F97-4054-207D-7CF1-4C969173F93A";
	setAttr ".t" -type "double3" 31.25 -1.1099999999999999e-13 -343.75 ;
createNode locator -n "plocator529Shape" -p "plocator529";
	rename -uid "351FC171-484D-68E0-D2F9-2A9C95287279";
	setAttr -k off ".v";
createNode transform -n "plocator530" -p "cameraPGroup_pgroup_1_1";
	rename -uid "D31CE17A-45A2-40BD-095B-AD8A14B4B5C0";
	setAttr ".t" -type "double3" 31.25 -1.1099999999999999e-13 -312.5 ;
createNode locator -n "plocator530Shape" -p "plocator530";
	rename -uid "DCFF7B38-41B5-EDCB-9138-20886F436506";
	setAttr -k off ".v";
createNode transform -n "plocator531" -p "cameraPGroup_pgroup_1_1";
	rename -uid "85B97032-4F26-2DEF-E53A-17942DF5D712";
	setAttr ".t" -type "double3" 31.25 -1.1099999999999999e-13 -281.25 ;
createNode locator -n "plocator531Shape" -p "plocator531";
	rename -uid "32F340BC-4093-8F29-13E9-D4A2CE3FE485";
	setAttr -k off ".v";
createNode transform -n "plocator532" -p "cameraPGroup_pgroup_1_1";
	rename -uid "B0E14483-4E19-A4F6-975E-29B95ADA9258";
	setAttr ".t" -type "double3" 31.25 -1.1099999999999999e-13 -250 ;
createNode locator -n "plocator532Shape" -p "plocator532";
	rename -uid "7CE08BBA-4374-E0D7-D6BF-AAA4C1F67613";
	setAttr -k off ".v";
createNode transform -n "plocator533" -p "cameraPGroup_pgroup_1_1";
	rename -uid "FE4021D7-4AE2-913E-9A9D-31B8DE2E4232";
	setAttr ".t" -type "double3" 31.25 -1.1099999999999999e-13 -218.75 ;
createNode locator -n "plocator533Shape" -p "plocator533";
	rename -uid "1CF8FC83-4219-4478-2A0C-FA8F80B7D5A6";
	setAttr -k off ".v";
createNode transform -n "plocator534" -p "cameraPGroup_pgroup_1_1";
	rename -uid "904EBCB8-4DF7-D4E0-38E7-A0BFF4A41E1B";
	setAttr ".t" -type "double3" 31.25 -1.1099999999999999e-13 -187.5 ;
createNode locator -n "plocator534Shape" -p "plocator534";
	rename -uid "3ECA125A-40DE-A515-6B7F-1EA4349F3EE7";
	setAttr -k off ".v";
createNode transform -n "plocator535" -p "cameraPGroup_pgroup_1_1";
	rename -uid "384F881A-4CC8-9F74-E5D9-89B86DCF85EB";
	setAttr ".t" -type "double3" 31.25 -1.1099999999999999e-13 -156.25 ;
createNode locator -n "plocator535Shape" -p "plocator535";
	rename -uid "7E3D8FFF-49CF-FEF5-CA54-9AA8B7ADFD97";
	setAttr -k off ".v";
createNode transform -n "plocator536" -p "cameraPGroup_pgroup_1_1";
	rename -uid "E36FCF1C-41D6-0DD2-952A-71838883009E";
	setAttr ".t" -type "double3" 31.25 -1.1099999999999999e-13 -125 ;
createNode locator -n "plocator536Shape" -p "plocator536";
	rename -uid "EBF9DECA-42C3-6B19-DFA8-E19D5E32DE68";
	setAttr -k off ".v";
createNode transform -n "plocator537" -p "cameraPGroup_pgroup_1_1";
	rename -uid "45D3868E-4ED1-227F-2791-FCA5ED52768A";
	setAttr ".t" -type "double3" 31.25 -1.1099999999999999e-13 -93.75 ;
createNode locator -n "plocator537Shape" -p "plocator537";
	rename -uid "4702CC72-45E5-066B-684A-878249459A29";
	setAttr -k off ".v";
createNode transform -n "plocator538" -p "cameraPGroup_pgroup_1_1";
	rename -uid "630F010F-4A8B-7B8C-90F2-CEB37EF9C13A";
	setAttr ".t" -type "double3" 31.25 -1.1099999999999999e-13 -62.5 ;
createNode locator -n "plocator538Shape" -p "plocator538";
	rename -uid "0FAD449A-4184-8A39-D967-A08D5CDFA54D";
	setAttr -k off ".v";
createNode transform -n "plocator539" -p "cameraPGroup_pgroup_1_1";
	rename -uid "8E2AE59C-4EA8-E72E-D0FB-73928EA9C54A";
	setAttr ".t" -type "double3" 31.25 -1.1099999999999999e-13 -31.25 ;
createNode locator -n "plocator539Shape" -p "plocator539";
	rename -uid "23288C6D-4EE9-B735-FB9E-B2901CD2145C";
	setAttr -k off ".v";
createNode transform -n "plocator540" -p "cameraPGroup_pgroup_1_1";
	rename -uid "DFA30088-4157-4D84-757C-0EBD5171FCB9";
	setAttr ".t" -type "double3" 31.25 -1.1099999999999999e-13 0 ;
createNode locator -n "plocator540Shape" -p "plocator540";
	rename -uid "96F7BBAC-48C6-AB47-B245-23A04CE19133";
	setAttr -k off ".v";
createNode transform -n "plocator541" -p "cameraPGroup_pgroup_1_1";
	rename -uid "91B92107-4ECB-6D57-688C-2D889898BD00";
	setAttr ".t" -type "double3" 31.25 -1.1099999999999999e-13 31.25 ;
createNode locator -n "plocator541Shape" -p "plocator541";
	rename -uid "6D5FD59B-4341-B4EA-33D9-4784DE5CD094";
	setAttr -k off ".v";
createNode transform -n "plocator542" -p "cameraPGroup_pgroup_1_1";
	rename -uid "7B445EE7-4AE0-A3B8-E394-1EACCB02FB3B";
	setAttr ".t" -type "double3" 31.25 -1.1099999999999999e-13 62.5 ;
createNode locator -n "plocator542Shape" -p "plocator542";
	rename -uid "D46024C3-498D-2147-C7A3-E5A462C107B0";
	setAttr -k off ".v";
createNode transform -n "plocator543" -p "cameraPGroup_pgroup_1_1";
	rename -uid "F568D02E-40A1-AD80-7DCF-94867E4A68D1";
	setAttr ".t" -type "double3" 31.25 -1.1099999999999999e-13 93.75 ;
createNode locator -n "plocator543Shape" -p "plocator543";
	rename -uid "C81DD02C-4B59-911B-511B-A9A3FB409E60";
	setAttr -k off ".v";
createNode transform -n "plocator544" -p "cameraPGroup_pgroup_1_1";
	rename -uid "9142D240-4A07-9C7E-DC9E-C2AEF4A76442";
	setAttr ".t" -type "double3" 31.25 -1.1099999999999999e-13 125 ;
createNode locator -n "plocator544Shape" -p "plocator544";
	rename -uid "C6BAC1D8-4E2E-9B46-8E59-88B03E6A551C";
	setAttr -k off ".v";
createNode transform -n "plocator545" -p "cameraPGroup_pgroup_1_1";
	rename -uid "7E7391D5-41F0-BCAF-4ADE-909EE0F16798";
	setAttr ".t" -type "double3" 31.25 -1.1099999999999999e-13 156.25 ;
createNode locator -n "plocator545Shape" -p "plocator545";
	rename -uid "F34AFF7A-4CF9-A2C3-DFC1-F29206F0CE7A";
	setAttr -k off ".v";
createNode transform -n "plocator546" -p "cameraPGroup_pgroup_1_1";
	rename -uid "3725A011-4874-4DE7-F1C3-C7BCDE6CD189";
	setAttr ".t" -type "double3" 31.25 -1.1099999999999999e-13 187.5 ;
createNode locator -n "plocator546Shape" -p "plocator546";
	rename -uid "BCB3FDC3-481C-E9E6-A507-08A3CD7D49A7";
	setAttr -k off ".v";
createNode transform -n "plocator547" -p "cameraPGroup_pgroup_1_1";
	rename -uid "E07A53C9-4622-3A27-1811-8985DB59B07C";
	setAttr ".t" -type "double3" 31.25 -1.1099999999999999e-13 218.75 ;
createNode locator -n "plocator547Shape" -p "plocator547";
	rename -uid "A7C4DDDE-4F6D-3CDF-B6ED-A49969A3A036";
	setAttr -k off ".v";
createNode transform -n "plocator548" -p "cameraPGroup_pgroup_1_1";
	rename -uid "25F8A734-4ED7-405A-CA26-3190AAD2DAE5";
	setAttr ".t" -type "double3" 31.25 -1.1099999999999999e-13 250 ;
createNode locator -n "plocator548Shape" -p "plocator548";
	rename -uid "3140915C-4D11-7F65-EBDC-929DC24F8999";
	setAttr -k off ".v";
createNode transform -n "plocator549" -p "cameraPGroup_pgroup_1_1";
	rename -uid "D924D726-449F-41A8-DD20-A28FC0DF545B";
	setAttr ".t" -type "double3" 31.25 -1.1099999999999999e-13 281.25 ;
createNode locator -n "plocator549Shape" -p "plocator549";
	rename -uid "557DB9B6-447D-A533-C4EA-69A193601297";
	setAttr -k off ".v";
createNode transform -n "plocator561" -p "cameraPGroup_pgroup_1_1";
	rename -uid "91DB9105-4CA5-7BA2-65A3-918D0F018E21";
	setAttr ".t" -type "double3" 0 -1.1099999999999999e-13 -375 ;
createNode locator -n "plocator561Shape" -p "plocator561";
	rename -uid "31B363FC-479D-6607-829B-E4BFFC281403";
	setAttr -k off ".v";
createNode transform -n "plocator562" -p "cameraPGroup_pgroup_1_1";
	rename -uid "D2198FC6-4A95-8E83-5D16-E7A2AFA16476";
	setAttr ".t" -type "double3" 0 -1.1099999999999999e-13 -343.75 ;
createNode locator -n "plocator562Shape" -p "plocator562";
	rename -uid "7C8FEC6E-4365-6570-08D3-60A69A5D12AC";
	setAttr -k off ".v";
createNode transform -n "plocator563" -p "cameraPGroup_pgroup_1_1";
	rename -uid "C8D3266F-41F1-FECB-2AC3-38ABAA209EC2";
	setAttr ".t" -type "double3" 0 -1.1099999999999999e-13 -312.5 ;
createNode locator -n "plocator563Shape" -p "plocator563";
	rename -uid "A86F4E45-472A-A066-F1F6-95A734314B61";
	setAttr -k off ".v";
createNode transform -n "plocator564" -p "cameraPGroup_pgroup_1_1";
	rename -uid "5132188F-489C-71D0-DD97-598071AAB0F5";
	setAttr ".t" -type "double3" 0 -1.1099999999999999e-13 -281.25 ;
createNode locator -n "plocator564Shape" -p "plocator564";
	rename -uid "674FBCB0-418D-C526-BEB0-04A611E26778";
	setAttr -k off ".v";
createNode transform -n "plocator565" -p "cameraPGroup_pgroup_1_1";
	rename -uid "A8853FB4-4BCE-0D29-F8C5-41BDC739B175";
	setAttr ".t" -type "double3" 0 -1.1099999999999999e-13 -250 ;
createNode locator -n "plocator565Shape" -p "plocator565";
	rename -uid "603C8DBA-409C-3220-3A92-F0AFE0DA8D98";
	setAttr -k off ".v";
createNode transform -n "plocator566" -p "cameraPGroup_pgroup_1_1";
	rename -uid "61E5C90C-4D66-E514-98BB-27962F13E7D3";
	setAttr ".t" -type "double3" 0 -1.1099999999999999e-13 -218.75 ;
createNode locator -n "plocator566Shape" -p "plocator566";
	rename -uid "5D15E280-45F4-BCAE-5E72-B882F6303772";
	setAttr -k off ".v";
createNode transform -n "plocator567" -p "cameraPGroup_pgroup_1_1";
	rename -uid "40703506-4C69-F1F7-4ED5-BBA4D2C06875";
	setAttr ".t" -type "double3" 0 -1.1099999999999999e-13 -187.5 ;
createNode locator -n "plocator567Shape" -p "plocator567";
	rename -uid "B0AD2DD4-48FB-780F-A420-64B3C452EF6A";
	setAttr -k off ".v";
createNode transform -n "plocator568" -p "cameraPGroup_pgroup_1_1";
	rename -uid "140F9D56-42C9-A1F4-7FEC-B49FD174C2FD";
	setAttr ".t" -type "double3" 0 -1.1099999999999999e-13 -156.25 ;
createNode locator -n "plocator568Shape" -p "plocator568";
	rename -uid "0FAE0F41-4707-1AA6-BB39-A58CDB3E3C00";
	setAttr -k off ".v";
createNode transform -n "plocator569" -p "cameraPGroup_pgroup_1_1";
	rename -uid "4F5F04F3-43F6-EC68-40E6-A98E7DA2A62E";
	setAttr ".t" -type "double3" 0 -1.1099999999999999e-13 -125 ;
createNode locator -n "plocator569Shape" -p "plocator569";
	rename -uid "478A3FB6-417C-532C-D3F4-CF99D419E127";
	setAttr -k off ".v";
createNode transform -n "plocator570" -p "cameraPGroup_pgroup_1_1";
	rename -uid "92B6E3DF-43EB-8D18-7361-B9ABAA27613E";
	setAttr ".t" -type "double3" 0 -1.1099999999999999e-13 -93.75 ;
createNode locator -n "plocator570Shape" -p "plocator570";
	rename -uid "D4A61197-4FDF-CDCE-E8AD-C88682FB2F8C";
	setAttr -k off ".v";
createNode transform -n "plocator571" -p "cameraPGroup_pgroup_1_1";
	rename -uid "3E806222-44F5-123F-18F2-799041E84F0D";
	setAttr ".t" -type "double3" 0 -1.1099999999999999e-13 -62.5 ;
createNode locator -n "plocator571Shape" -p "plocator571";
	rename -uid "000A991F-478E-A206-10F0-8B9936BB6B31";
	setAttr -k off ".v";
createNode transform -n "plocator572" -p "cameraPGroup_pgroup_1_1";
	rename -uid "E85CBBB4-4E91-26BC-C544-6F8108F2A9DF";
	setAttr ".t" -type "double3" 0 -1.1099999999999999e-13 -31.25 ;
createNode locator -n "plocator572Shape" -p "plocator572";
	rename -uid "15166BB2-48E5-30E6-226B-CFAC2A5080CA";
	setAttr -k off ".v";
createNode transform -n "plocator573" -p "cameraPGroup_pgroup_1_1";
	rename -uid "5D739F50-460E-914E-3A03-F6A8CA60B0C2";
	setAttr ".t" -type "double3" 0 -1.1099999999999999e-13 0 ;
createNode locator -n "plocator573Shape" -p "plocator573";
	rename -uid "E5303F53-45DF-2258-4410-299513CFA9BC";
	setAttr -k off ".v";
createNode transform -n "plocator574" -p "cameraPGroup_pgroup_1_1";
	rename -uid "1F1EA85C-4378-263F-DBF3-0391CB81EF99";
	setAttr ".t" -type "double3" 0 -1.1099999999999999e-13 31.25 ;
createNode locator -n "plocator574Shape" -p "plocator574";
	rename -uid "98D7680F-4B09-87D0-8F09-8B9F3C82F7A4";
	setAttr -k off ".v";
createNode transform -n "plocator575" -p "cameraPGroup_pgroup_1_1";
	rename -uid "4016F0B3-49BF-9B86-C9EA-98B21B4D3AFF";
	setAttr ".t" -type "double3" 0 -1.1099999999999999e-13 62.5 ;
createNode locator -n "plocator575Shape" -p "plocator575";
	rename -uid "9A7DECB0-4201-7571-569A-0CA7B68E9B3D";
	setAttr -k off ".v";
createNode transform -n "plocator576" -p "cameraPGroup_pgroup_1_1";
	rename -uid "CEB2E94F-4B7F-A0BB-3B02-67B1B501E429";
	setAttr ".t" -type "double3" 0 -1.1099999999999999e-13 93.75 ;
createNode locator -n "plocator576Shape" -p "plocator576";
	rename -uid "60B0C782-49D7-B198-0310-96A009D5AD04";
	setAttr -k off ".v";
createNode transform -n "plocator577" -p "cameraPGroup_pgroup_1_1";
	rename -uid "9F48714C-41F5-5888-D77E-CDB53A5A3914";
	setAttr ".t" -type "double3" 0 -1.1099999999999999e-13 125 ;
createNode locator -n "plocator577Shape" -p "plocator577";
	rename -uid "B5774AD6-4711-7A85-77B5-1CA2C6E1150B";
	setAttr -k off ".v";
createNode transform -n "plocator578" -p "cameraPGroup_pgroup_1_1";
	rename -uid "C7D6BE53-4822-8841-9D47-09AAC0B3E308";
	setAttr ".t" -type "double3" 0 -1.1099999999999999e-13 156.25 ;
createNode locator -n "plocator578Shape" -p "plocator578";
	rename -uid "07E7572C-4B08-34CC-3152-358AC5003876";
	setAttr -k off ".v";
createNode transform -n "plocator579" -p "cameraPGroup_pgroup_1_1";
	rename -uid "9E202C02-4AEB-9D96-5A68-A1B15F3C055E";
	setAttr ".t" -type "double3" 0 -1.1099999999999999e-13 187.5 ;
createNode locator -n "plocator579Shape" -p "plocator579";
	rename -uid "2452B03A-4C35-20BB-A4E2-E8BD62DD9FA9";
	setAttr -k off ".v";
createNode transform -n "plocator580" -p "cameraPGroup_pgroup_1_1";
	rename -uid "FEE3CF43-4FC2-5F86-DC27-24A1BD16969F";
	setAttr ".t" -type "double3" 0 -1.1099999999999999e-13 218.75 ;
createNode locator -n "plocator580Shape" -p "plocator580";
	rename -uid "7A6375E6-49FF-1C5B-1B59-5ABBB571DE72";
	setAttr -k off ".v";
createNode transform -n "plocator581" -p "cameraPGroup_pgroup_1_1";
	rename -uid "AAA8A0F5-4A3E-88C6-B258-A6B668118541";
	setAttr ".t" -type "double3" 0 -1.1099999999999999e-13 250 ;
createNode locator -n "plocator581Shape" -p "plocator581";
	rename -uid "B25CAF73-476B-C2C8-D649-B7B03122B17D";
	setAttr -k off ".v";
createNode transform -n "plocator582" -p "cameraPGroup_pgroup_1_1";
	rename -uid "B163B69E-400B-785C-300A-03800A1A9633";
	setAttr ".t" -type "double3" 0 -1.1099999999999999e-13 281.25 ;
createNode locator -n "plocator582Shape" -p "plocator582";
	rename -uid "360DF4B2-46C5-33CB-1C4A-F09DA2E19FF3";
	setAttr -k off ".v";
createNode transform -n "plocator583" -p "cameraPGroup_pgroup_1_1";
	rename -uid "2037C69E-4BE1-F9EC-628A-06B16FA1A95A";
	setAttr ".t" -type "double3" 0 -1.1099999999999999e-13 312.5 ;
createNode locator -n "plocator583Shape" -p "plocator583";
	rename -uid "90E2E1F0-48BC-67FA-ECFD-9DBD67482ADE";
	setAttr -k off ".v";
createNode transform -n "plocator595" -p "cameraPGroup_pgroup_1_1";
	rename -uid "4245AFDA-406A-2E9E-333F-77BD2B7BF30A";
	setAttr ".t" -type "double3" -31.25 -1.1099999999999999e-13 -343.75 ;
createNode locator -n "plocator595Shape" -p "plocator595";
	rename -uid "0B4336B0-4E2E-D5D7-0DD5-D8BDE51C8BFF";
	setAttr -k off ".v";
createNode transform -n "plocator596" -p "cameraPGroup_pgroup_1_1";
	rename -uid "9BAA6A08-4341-EB56-6CE7-AE80088AE164";
	setAttr ".t" -type "double3" -31.25 -1.1099999999999999e-13 -312.5 ;
createNode locator -n "plocator596Shape" -p "plocator596";
	rename -uid "A9BA55FE-433A-A1F2-7545-93850E30E90F";
	setAttr -k off ".v";
createNode transform -n "plocator597" -p "cameraPGroup_pgroup_1_1";
	rename -uid "73A0D8EB-4700-0881-00E0-1388A7B18D76";
	setAttr ".t" -type "double3" -31.25 -1.1099999999999999e-13 -281.25 ;
createNode locator -n "plocator597Shape" -p "plocator597";
	rename -uid "740CF2F2-42B3-44E0-2AE7-4086C984531A";
	setAttr -k off ".v";
createNode transform -n "plocator598" -p "cameraPGroup_pgroup_1_1";
	rename -uid "4F9401F2-4840-2509-5E29-FF83ADC50D6D";
	setAttr ".t" -type "double3" -31.25 -1.1099999999999999e-13 93.75 ;
createNode locator -n "plocator598Shape" -p "plocator598";
	rename -uid "D17E69AD-4793-D871-6E50-6F9E562C663C";
	setAttr -k off ".v";
createNode transform -n "plocator599" -p "cameraPGroup_pgroup_1_1";
	rename -uid "820E4C34-42F1-7459-171B-339908891EF0";
	setAttr ".t" -type "double3" -31.25 -1.1099999999999999e-13 125 ;
createNode locator -n "plocator599Shape" -p "plocator599";
	rename -uid "7889DC1F-449D-AE3D-0B6E-16A0EF169435";
	setAttr -k off ".v";
createNode transform -n "plocator600" -p "cameraPGroup_pgroup_1_1";
	rename -uid "00463F32-4DA4-BDBD-1782-B688F8D76191";
	setAttr ".t" -type "double3" -31.25 -1.1099999999999999e-13 156.25 ;
createNode locator -n "plocator600Shape" -p "plocator600";
	rename -uid "78BF949D-440C-668B-CA7E-0C9E7937C7E2";
	setAttr -k off ".v";
createNode transform -n "plocator601" -p "cameraPGroup_pgroup_1_1";
	rename -uid "B61DF152-43C3-611E-3B70-1CB4E4ABA0C7";
	setAttr ".t" -type "double3" -31.25 -1.1099999999999999e-13 187.5 ;
createNode locator -n "plocator601Shape" -p "plocator601";
	rename -uid "CC92351C-4038-102B-1863-F99996547F81";
	setAttr -k off ".v";
createNode transform -n "plocator602" -p "cameraPGroup_pgroup_1_1";
	rename -uid "5D4BF0CC-4E9B-EE6A-A498-FCA7CB27CCCF";
	setAttr ".t" -type "double3" -31.25 -1.1099999999999999e-13 218.75 ;
createNode locator -n "plocator602Shape" -p "plocator602";
	rename -uid "D755CCDD-4755-CE23-6922-F583653F3674";
	setAttr -k off ".v";
createNode transform -n "plocator603" -p "cameraPGroup_pgroup_1_1";
	rename -uid "ACE6817E-40A0-DD93-F956-C193CB5C1710";
	setAttr ".t" -type "double3" -31.25 -1.1099999999999999e-13 250 ;
createNode locator -n "plocator603Shape" -p "plocator603";
	rename -uid "992AD13A-4ECE-E36C-D3CB-B4AD7FF8798D";
	setAttr -k off ".v";
createNode transform -n "plocator604" -p "cameraPGroup_pgroup_1_1";
	rename -uid "74208FE9-475F-D967-178B-5D8B59B29BD6";
	setAttr ".t" -type "double3" -31.25 -1.1099999999999999e-13 281.25 ;
createNode locator -n "plocator604Shape" -p "plocator604";
	rename -uid "B2ADFD4C-48A5-945C-161C-FAB27C15F5FF";
	setAttr -k off ".v";
createNode transform -n "plocator605" -p "cameraPGroup_pgroup_1_1";
	rename -uid "F6564852-47F4-93A3-D512-2CA794741C0F";
	setAttr ".t" -type "double3" -31.25 -1.1099999999999999e-13 312.5 ;
createNode locator -n "plocator605Shape" -p "plocator605";
	rename -uid "E4418475-4948-2D98-B1E1-DD81274C1406";
	setAttr -k off ".v";
createNode transform -n "plocator611" -p "cameraPGroup_pgroup_1_1";
	rename -uid "8C5986C4-4D7B-07F9-0884-8FAF8EFB6470";
	setAttr ".t" -type "double3" -31.25 -1.1099999999999999e-13 -250 ;
createNode locator -n "plocator611Shape" -p "plocator611";
	rename -uid "5A3F0536-43C0-4870-36E7-8090D83A3D34";
	setAttr -k off ".v";
createNode transform -n "plocator612" -p "cameraPGroup_pgroup_1_1";
	rename -uid "7E9EE9CC-4EA2-2B82-1B71-6492A78D7C45";
	setAttr ".t" -type "double3" -31.25 -1.1099999999999999e-13 -218.75 ;
createNode locator -n "plocator612Shape" -p "plocator612";
	rename -uid "16020809-444B-4DBE-027B-FFAA86827D7F";
	setAttr -k off ".v";
createNode transform -n "plocator613" -p "cameraPGroup_pgroup_1_1";
	rename -uid "91C5B9D0-4CDE-FD49-99F0-01BE3D76031D";
	setAttr ".t" -type "double3" -31.25 -1.1099999999999999e-13 -187.5 ;
createNode locator -n "plocator613Shape" -p "plocator613";
	rename -uid "5A827F99-4BE1-1375-E250-A7B75D66CA6C";
	setAttr -k off ".v";
createNode transform -n "plocator614" -p "cameraPGroup_pgroup_1_1";
	rename -uid "213F312F-462D-DA3F-B604-DE87086B7579";
	setAttr ".t" -type "double3" -31.25 -1.1099999999999999e-13 -156.25 ;
createNode locator -n "plocator614Shape" -p "plocator614";
	rename -uid "70288B45-4731-8158-9C44-33A1D4088E03";
	setAttr -k off ".v";
createNode transform -n "plocator615" -p "cameraPGroup_pgroup_1_1";
	rename -uid "5D012F83-482B-2F77-85A4-D9BBA0BAD897";
	setAttr ".t" -type "double3" -31.25 -1.1099999999999999e-13 -125 ;
createNode locator -n "plocator615Shape" -p "plocator615";
	rename -uid "1047035B-4782-6CA8-2796-47841B429957";
	setAttr -k off ".v";
createNode transform -n "plocator616" -p "cameraPGroup_pgroup_1_1";
	rename -uid "6B3899DB-476A-DB34-98A0-51B77EEEAA2B";
	setAttr ".t" -type "double3" -31.25 -1.1099999999999999e-13 -93.75 ;
createNode locator -n "plocator616Shape" -p "plocator616";
	rename -uid "E2FACB63-42E4-90F8-F6CB-518D1880D0DD";
	setAttr -k off ".v";
createNode transform -n "plocator617" -p "cameraPGroup_pgroup_1_1";
	rename -uid "963FC1FB-4775-A106-0046-8480E2480506";
	setAttr ".t" -type "double3" -31.25 -1.1099999999999999e-13 -62.5 ;
createNode locator -n "plocator617Shape" -p "plocator617";
	rename -uid "BEB2CA17-49B0-F4DB-6658-DBACAEE676A6";
	setAttr -k off ".v";
createNode transform -n "plocator618" -p "cameraPGroup_pgroup_1_1";
	rename -uid "4131C6D2-482D-776D-085A-FB9C287C6A32";
	setAttr ".t" -type "double3" -31.25 -1.1099999999999999e-13 -31.25 ;
createNode locator -n "plocator618Shape" -p "plocator618";
	rename -uid "0D869E53-4334-E25A-9AF9-7EAD56ED2089";
	setAttr -k off ".v";
createNode transform -n "plocator619" -p "cameraPGroup_pgroup_1_1";
	rename -uid "F049FF48-4580-21E2-5EA3-CA8BD0C4D43A";
	setAttr ".t" -type "double3" -31.25 -1.1099999999999999e-13 0 ;
createNode locator -n "plocator619Shape" -p "plocator619";
	rename -uid "B0CE0651-4C61-C449-548E-1B8E0F09585C";
	setAttr -k off ".v";
createNode transform -n "plocator620" -p "cameraPGroup_pgroup_1_1";
	rename -uid "EA59812F-45DD-A45D-8932-C9BF1D7AD56E";
	setAttr ".t" -type "double3" -31.25 -1.1099999999999999e-13 31.25 ;
createNode locator -n "plocator620Shape" -p "plocator620";
	rename -uid "4162337C-4A9C-9307-7E86-C398C7F5E62E";
	setAttr -k off ".v";
createNode transform -n "plocator621" -p "cameraPGroup_pgroup_1_1";
	rename -uid "45C27F6A-451E-1B3E-D28C-178DCB26F2B8";
	setAttr ".t" -type "double3" -31.25 -1.1099999999999999e-13 62.5 ;
createNode locator -n "plocator621Shape" -p "plocator621";
	rename -uid "340F680D-46E7-9DBF-5AAA-B2BD87B4DBCD";
	setAttr -k off ".v";
createNode transform -n "plocator622" -p "cameraPGroup_pgroup_1_1";
	rename -uid "3ACFCF2A-4883-7D2F-B75E-89845798815C";
	setAttr ".t" -type "double3" -62.5 -1.1099999999999999e-13 -281.25 ;
createNode locator -n "plocator622Shape" -p "plocator622";
	rename -uid "41A5A06D-4E42-F3AB-F8FE-7E96B3CF284B";
	setAttr -k off ".v";
createNode transform -n "plocator623" -p "cameraPGroup_pgroup_1_1";
	rename -uid "2C126C69-46A2-AC03-A14E-69A5C7423F66";
	setAttr ".t" -type "double3" -62.5 -1.1099999999999999e-13 -250 ;
createNode locator -n "plocator623Shape" -p "plocator623";
	rename -uid "FA6C022D-4421-99B1-D34C-C3872F9E31F2";
	setAttr -k off ".v";
createNode transform -n "plocator624" -p "cameraPGroup_pgroup_1_1";
	rename -uid "62492C34-4D3D-5E11-8D4C-7FA70D9304A0";
	setAttr ".t" -type "double3" -62.5 -1.1099999999999999e-13 -218.75 ;
createNode locator -n "plocator624Shape" -p "plocator624";
	rename -uid "276A262E-4DA1-B2C9-66F0-D99CE80998BD";
	setAttr -k off ".v";
createNode transform -n "plocator625" -p "cameraPGroup_pgroup_1_1";
	rename -uid "5CE94289-475A-5CD3-496E-48A1EB1F345B";
	setAttr ".t" -type "double3" -62.5 -1.1099999999999999e-13 -187.5 ;
createNode locator -n "plocator625Shape" -p "plocator625";
	rename -uid "2844B9A1-4154-43DA-DBD3-DFBCF82B79A4";
	setAttr -k off ".v";
createNode transform -n "plocator626" -p "cameraPGroup_pgroup_1_1";
	rename -uid "703A6792-4E0C-1C74-AC6A-B69201A36F60";
	setAttr ".t" -type "double3" -62.5 -1.1099999999999999e-13 -156.25 ;
createNode locator -n "plocator626Shape" -p "plocator626";
	rename -uid "7E8C681B-497C-2F22-CB2D-2AB651636F81";
	setAttr -k off ".v";
createNode transform -n "plocator627" -p "cameraPGroup_pgroup_1_1";
	rename -uid "AF9C4403-49F1-D4A6-4C87-879225A6C685";
	setAttr ".t" -type "double3" -62.5 -1.1099999999999999e-13 -125 ;
createNode locator -n "plocator627Shape" -p "plocator627";
	rename -uid "D85D2642-46B3-216D-50BA-599CE046B4B1";
	setAttr -k off ".v";
createNode transform -n "plocator628" -p "cameraPGroup_pgroup_1_1";
	rename -uid "FC5D940D-4051-07C0-F12F-43ABCC7FC640";
	setAttr ".t" -type "double3" -62.5 -1.1099999999999999e-13 -93.75 ;
createNode locator -n "plocator628Shape" -p "plocator628";
	rename -uid "8300CEF2-48F7-0C7A-E0DD-90B960A66E8E";
	setAttr -k off ".v";
createNode transform -n "plocator629" -p "cameraPGroup_pgroup_1_1";
	rename -uid "A8442C04-4763-210C-9407-BD8A220F1F3D";
	setAttr ".t" -type "double3" -62.5 -1.1099999999999999e-13 -62.5 ;
createNode locator -n "plocator629Shape" -p "plocator629";
	rename -uid "1069A4E7-43B0-4090-E0F5-BABAECE255E2";
	setAttr -k off ".v";
createNode transform -n "plocator630" -p "cameraPGroup_pgroup_1_1";
	rename -uid "6D0252B0-4F5E-4B2B-0856-198932F154FD";
	setAttr ".t" -type "double3" -62.5 -1.1099999999999999e-13 -31.25 ;
createNode locator -n "plocator630Shape" -p "plocator630";
	rename -uid "0F1BFBE4-48B8-D26E-D311-C69D053EB538";
	setAttr -k off ".v";
createNode transform -n "plocator631" -p "cameraPGroup_pgroup_1_1";
	rename -uid "76A2021C-449E-7870-00BD-628F13FE26FD";
	setAttr ".t" -type "double3" -62.5 -1.1099999999999999e-13 0 ;
createNode locator -n "plocator631Shape" -p "plocator631";
	rename -uid "AFFDF12A-4426-0443-3783-498AC9428294";
	setAttr -k off ".v";
createNode transform -n "plocator632" -p "cameraPGroup_pgroup_1_1";
	rename -uid "49B989B3-4D6F-4CF6-D6DB-C580CC9F7A1C";
	setAttr ".t" -type "double3" -62.5 -1.1099999999999999e-13 31.25 ;
createNode locator -n "plocator632Shape" -p "plocator632";
	rename -uid "3D3A2FB0-462E-0A67-9044-44A094D69AF3";
	setAttr -k off ".v";
createNode transform -n "plocator641" -p "cameraPGroup_pgroup_1_1";
	rename -uid "4D96EF23-4183-24F5-334B-9FBB91FF1CDF";
	setAttr ".t" -type "double3" -62.5 -1.1099999999999999e-13 62.5 ;
createNode locator -n "plocator641Shape" -p "plocator641";
	rename -uid "7ECE6A45-4AFF-66ED-AC23-FB866FD9FB35";
	setAttr -k off ".v";
createNode transform -n "plocator642" -p "cameraPGroup_pgroup_1_1";
	rename -uid "D07EC8C2-4E78-5EC0-FA16-A3827747A56A";
	setAttr ".t" -type "double3" -62.5 -1.1099999999999999e-13 93.75 ;
createNode locator -n "plocator642Shape" -p "plocator642";
	rename -uid "D8EBA1F1-467F-4474-7DE5-63BD56D9613F";
	setAttr -k off ".v";
createNode transform -n "plocator643" -p "cameraPGroup_pgroup_1_1";
	rename -uid "0F5B3D47-43CF-5BA0-55FA-C08116453F78";
	setAttr ".t" -type "double3" -62.5 -1.1099999999999999e-13 125 ;
createNode locator -n "plocator643Shape" -p "plocator643";
	rename -uid "9A6D9FCD-408A-68E7-B63E-7295A1A198C6";
	setAttr -k off ".v";
createNode transform -n "plocator644" -p "cameraPGroup_pgroup_1_1";
	rename -uid "EF4A01F9-4CDE-7A19-7BF9-E89265739501";
	setAttr ".t" -type "double3" -62.5 -1.1099999999999999e-13 156.25 ;
createNode locator -n "plocator644Shape" -p "plocator644";
	rename -uid "17C92A0A-4877-AEAC-DED3-FEB06E26FC31";
	setAttr -k off ".v";
createNode transform -n "plocator645" -p "cameraPGroup_pgroup_1_1";
	rename -uid "C6943D02-4589-4C06-E8DF-BE86B9683FD9";
	setAttr ".t" -type "double3" -62.5 -1.1099999999999999e-13 187.5 ;
createNode locator -n "plocator645Shape" -p "plocator645";
	rename -uid "2E1DA1C6-4B22-0A2D-E738-E1B1A3F6D638";
	setAttr -k off ".v";
createNode transform -n "plocator646" -p "cameraPGroup_pgroup_1_1";
	rename -uid "C3E209B0-4C61-1352-F633-6AA4055AA159";
	setAttr ".t" -type "double3" -62.5 -1.1099999999999999e-13 218.75 ;
createNode locator -n "plocator646Shape" -p "plocator646";
	rename -uid "DED8629A-4161-7E1B-9A49-2580279163B4";
	setAttr -k off ".v";
createNode transform -n "plocator647" -p "cameraPGroup_pgroup_1_1";
	rename -uid "65FEF301-4B79-7D02-D59E-5481F5E10D84";
	setAttr ".t" -type "double3" -62.5 -1.1099999999999999e-13 250 ;
createNode locator -n "plocator647Shape" -p "plocator647";
	rename -uid "21ECAF36-44BD-DF92-1889-B9905AE2453B";
	setAttr -k off ".v";
createNode transform -n "plocator648" -p "cameraPGroup_pgroup_1_1";
	rename -uid "347BC9C2-494C-2374-C185-6897A092EB01";
	setAttr ".t" -type "double3" -62.5 -1.1099999999999999e-13 281.25 ;
createNode locator -n "plocator648Shape" -p "plocator648";
	rename -uid "4C5AECF2-4DAE-23A1-B6EF-9AA14D9321E1";
	setAttr -k off ".v";
createNode transform -n "plocator649" -p "cameraPGroup_pgroup_1_1";
	rename -uid "8D1D34C8-4E6B-6E70-835C-45A62801BD0B";
	setAttr ".t" -type "double3" -62.5 -1.1099999999999999e-13 312.5 ;
createNode locator -n "plocator649Shape" -p "plocator649";
	rename -uid "8B51F4F2-4709-E463-7384-1F9D5AA9B43A";
	setAttr -k off ".v";
createNode transform -n "plocator661" -p "cameraPGroup_pgroup_1_1";
	rename -uid "DDBC6C7F-4D58-7488-9875-9E9460661E4C";
	setAttr ".t" -type "double3" -93.75 -1.1099999999999999e-13 31.25 ;
createNode locator -n "plocator661Shape" -p "plocator661";
	rename -uid "8361C70A-4DA5-33CF-EAF5-34B1C9F71299";
	setAttr -k off ".v";
createNode transform -n "plocator662" -p "cameraPGroup_pgroup_1_1";
	rename -uid "97E170F0-492F-52C6-5CA4-23BBFA9D392D";
	setAttr ".t" -type "double3" -93.75 -1.1099999999999999e-13 62.5 ;
createNode locator -n "plocator662Shape" -p "plocator662";
	rename -uid "186F4A92-43DE-667D-0A03-0A8FC95D87E5";
	setAttr -k off ".v";
createNode transform -n "plocator663" -p "cameraPGroup_pgroup_1_1";
	rename -uid "EAB68C75-4FFE-B8C6-CBE4-E2AF08C9C494";
	setAttr ".t" -type "double3" -93.75 -1.1099999999999999e-13 93.75 ;
createNode locator -n "plocator663Shape" -p "plocator663";
	rename -uid "B0DCA7E0-412A-751D-6ABF-30916C1F2D68";
	setAttr -k off ".v";
createNode transform -n "plocator664" -p "cameraPGroup_pgroup_1_1";
	rename -uid "FF5A2556-4BD6-6B5A-D6BB-67A2E64FE05B";
	setAttr ".t" -type "double3" -93.75 -1.1099999999999999e-13 125 ;
createNode locator -n "plocator664Shape" -p "plocator664";
	rename -uid "AF708808-4210-4B72-C0AA-3C91B6D6BD85";
	setAttr -k off ".v";
createNode transform -n "plocator665" -p "cameraPGroup_pgroup_1_1";
	rename -uid "752DB472-4CED-F1D3-D5B9-5A9B542EACD5";
	setAttr ".t" -type "double3" -93.75 -1.1099999999999999e-13 156.25 ;
createNode locator -n "plocator665Shape" -p "plocator665";
	rename -uid "9C57125C-4923-5BB4-2670-DCA956E3D4E0";
	setAttr -k off ".v";
createNode transform -n "plocator666" -p "cameraPGroup_pgroup_1_1";
	rename -uid "3F31B8BF-40EE-4C7B-99F5-73B8ADC0B3F8";
	setAttr ".t" -type "double3" -93.75 -1.1099999999999999e-13 187.5 ;
createNode locator -n "plocator666Shape" -p "plocator666";
	rename -uid "B3E2C64E-40B4-0854-DCC5-6FB44F4ADB6C";
	setAttr -k off ".v";
createNode transform -n "plocator667" -p "cameraPGroup_pgroup_1_1";
	rename -uid "DCD7218D-4826-0844-3AF1-D9892D534802";
	setAttr ".t" -type "double3" -93.75 -1.1099999999999999e-13 218.75 ;
createNode locator -n "plocator667Shape" -p "plocator667";
	rename -uid "69279B74-455F-4395-EB8B-9E94D014B171";
	setAttr -k off ".v";
createNode transform -n "plocator668" -p "cameraPGroup_pgroup_1_1";
	rename -uid "2EF9CF62-43A9-C663-AD8D-669914D3C3A2";
	setAttr ".t" -type "double3" -93.75 -1.1099999999999999e-13 250 ;
createNode locator -n "plocator668Shape" -p "plocator668";
	rename -uid "2F53EE1C-41FB-65E1-6FB1-4BBE07F82602";
	setAttr -k off ".v";
createNode transform -n "plocator669" -p "cameraPGroup_pgroup_1_1";
	rename -uid "5FA30DE2-4138-1658-FF9B-0CA9C563F16C";
	setAttr ".t" -type "double3" -93.75 -1.1099999999999999e-13 281.25 ;
createNode locator -n "plocator669Shape" -p "plocator669";
	rename -uid "6533AA2B-4F53-0148-E422-CBBE63C482B3";
	setAttr -k off ".v";
createNode transform -n "plocator676" -p "cameraPGroup_pgroup_1_1";
	rename -uid "1B4F7205-42FE-2C33-8BFC-399C835D547F";
	setAttr ".t" -type "double3" -93.75 -1.1099999999999999e-13 -250 ;
createNode locator -n "plocator676Shape" -p "plocator676";
	rename -uid "78352AEB-43BA-F60E-B9B5-0AB0A8C36794";
	setAttr -k off ".v";
createNode transform -n "plocator677" -p "cameraPGroup_pgroup_1_1";
	rename -uid "101A67BB-4D2E-3423-39F8-E9BF7F8A9695";
	setAttr ".t" -type "double3" -93.75 -1.1099999999999999e-13 -218.75 ;
createNode locator -n "plocator677Shape" -p "plocator677";
	rename -uid "CFEE61C2-4835-785B-6504-DFAF479232E0";
	setAttr -k off ".v";
createNode transform -n "plocator678" -p "cameraPGroup_pgroup_1_1";
	rename -uid "04C8743E-4400-FDC7-388D-DAAF42448262";
	setAttr ".t" -type "double3" -93.75 -1.1099999999999999e-13 -187.5 ;
createNode locator -n "plocator678Shape" -p "plocator678";
	rename -uid "CFAA5E75-43BA-D8CC-ECA8-D5AE407C7657";
	setAttr -k off ".v";
createNode transform -n "plocator679" -p "cameraPGroup_pgroup_1_1";
	rename -uid "2EB42CCB-430F-D968-C5D1-45B844209288";
	setAttr ".t" -type "double3" -93.75 -1.1099999999999999e-13 -156.25 ;
createNode locator -n "plocator679Shape" -p "plocator679";
	rename -uid "504D177D-4F75-DD79-1ECD-D7AA26772739";
	setAttr -k off ".v";
createNode transform -n "plocator680" -p "cameraPGroup_pgroup_1_1";
	rename -uid "B219274A-47A1-8351-4EEA-0D88D4A210C8";
	setAttr ".t" -type "double3" -93.75 -1.1099999999999999e-13 -125 ;
createNode locator -n "plocator680Shape" -p "plocator680";
	rename -uid "11256ED6-405E-7949-C5BC-18B997F97E67";
	setAttr -k off ".v";
createNode transform -n "plocator681" -p "cameraPGroup_pgroup_1_1";
	rename -uid "E964CC42-41E5-C20D-9DE4-3C95D60D072A";
	setAttr ".t" -type "double3" -93.75 -1.1099999999999999e-13 -93.75 ;
createNode locator -n "plocator681Shape" -p "plocator681";
	rename -uid "AABFE6F7-4C6A-7A73-1568-D292C643C329";
	setAttr -k off ".v";
createNode transform -n "plocator682" -p "cameraPGroup_pgroup_1_1";
	rename -uid "117FC731-4462-E9F9-19EF-9E8EB035D11B";
	setAttr ".t" -type "double3" -93.75 -1.1099999999999999e-13 -62.5 ;
createNode locator -n "plocator682Shape" -p "plocator682";
	rename -uid "9084B4FD-4870-E44E-8BCB-7B8919072EE0";
	setAttr -k off ".v";
createNode transform -n "plocator683" -p "cameraPGroup_pgroup_1_1";
	rename -uid "B7A605F0-4875-2BB4-84EF-51A51C26C822";
	setAttr ".t" -type "double3" -93.75 -1.1099999999999999e-13 -31.25 ;
createNode locator -n "plocator683Shape" -p "plocator683";
	rename -uid "AFC2E674-49A3-3815-4901-E08B0F00B626";
	setAttr -k off ".v";
createNode transform -n "plocator684" -p "cameraPGroup_pgroup_1_1";
	rename -uid "0632CCCA-4900-39F6-55F2-EBA12D24C4DB";
	setAttr ".t" -type "double3" -93.75 -1.1099999999999999e-13 0 ;
createNode locator -n "plocator684Shape" -p "plocator684";
	rename -uid "7C6A4C55-4E29-8C58-B744-D08534CE4B4C";
	setAttr -k off ".v";
createNode transform -n "plocator699" -p "cameraPGroup_pgroup_1_1";
	rename -uid "B676D2D3-41B8-C10B-B2DF-4DA934907299";
	setAttr ".t" -type "double3" -125 -1.1099999999999999e-13 -187.5 ;
createNode locator -n "plocator699Shape" -p "plocator699";
	rename -uid "33E22B7E-47C3-B8A0-141A-F08BF11DA6E3";
	setAttr -k off ".v";
createNode transform -n "plocator700" -p "cameraPGroup_pgroup_1_1";
	rename -uid "CAC603BB-4B41-059C-886E-9584D61A1061";
	setAttr ".t" -type "double3" -125 -1.1099999999999999e-13 -156.25 ;
createNode locator -n "plocator700Shape" -p "plocator700";
	rename -uid "B2F3799C-43EF-E37F-E5BB-B2BBD222D5F6";
	setAttr -k off ".v";
createNode transform -n "plocator701" -p "cameraPGroup_pgroup_1_1";
	rename -uid "3D559682-4831-94A4-9414-78AC880298AE";
	setAttr ".t" -type "double3" -125 -1.1099999999999999e-13 -125 ;
createNode locator -n "plocator701Shape" -p "plocator701";
	rename -uid "63A541FC-496F-A73D-73A1-F2A3A2D31CE7";
	setAttr -k off ".v";
createNode transform -n "plocator702" -p "cameraPGroup_pgroup_1_1";
	rename -uid "4A753058-4971-9A3A-B861-CF90B6F3F923";
	setAttr ".t" -type "double3" -125 -1.1099999999999999e-13 -93.75 ;
createNode locator -n "plocator702Shape" -p "plocator702";
	rename -uid "1D904A6F-4493-07D1-43EC-26BE4A23B786";
	setAttr -k off ".v";
createNode transform -n "plocator703" -p "cameraPGroup_pgroup_1_1";
	rename -uid "48801FA5-45F2-584D-2F8A-74ADA45BCBCD";
	setAttr ".t" -type "double3" -125 -1.1099999999999999e-13 -62.5 ;
createNode locator -n "plocator703Shape" -p "plocator703";
	rename -uid "DBCFD6E3-42CE-7AC6-5480-75ACD0CD62EA";
	setAttr -k off ".v";
createNode transform -n "plocator704" -p "cameraPGroup_pgroup_1_1";
	rename -uid "3EA7E898-4746-5131-433F-17A22D34891D";
	setAttr ".t" -type "double3" -125 -1.1099999999999999e-13 -31.25 ;
createNode locator -n "plocator704Shape" -p "plocator704";
	rename -uid "8EB4C7BA-4008-7359-0BCB-3A8FA230D583";
	setAttr -k off ".v";
createNode transform -n "plocator705" -p "cameraPGroup_pgroup_1_1";
	rename -uid "C8D22185-438B-7DB5-0A66-0B8607DE5700";
	setAttr ".t" -type "double3" -125 -1.1099999999999999e-13 0 ;
createNode locator -n "plocator705Shape" -p "plocator705";
	rename -uid "F02B1484-4E0A-45F4-5A4B-FC8B74B23950";
	setAttr -k off ".v";
createNode transform -n "plocator706" -p "cameraPGroup_pgroup_1_1";
	rename -uid "F07B2E21-49A6-5271-E402-CCB0192CBD49";
	setAttr ".t" -type "double3" -125 -1.1099999999999999e-13 31.25 ;
createNode locator -n "plocator706Shape" -p "plocator706";
	rename -uid "891CEFCC-49EC-B610-2AFE-EFA30B1CD529";
	setAttr -k off ".v";
createNode transform -n "plocator707" -p "cameraPGroup_pgroup_1_1";
	rename -uid "24BF746A-424F-01BB-E63E-59ADE5786D3D";
	setAttr ".t" -type "double3" -125 -1.1099999999999999e-13 62.5 ;
createNode locator -n "plocator707Shape" -p "plocator707";
	rename -uid "460C210E-47F3-BB84-90C1-C29C14A8762C";
	setAttr -k off ".v";
createNode transform -n "plocator708" -p "cameraPGroup_pgroup_1_1";
	rename -uid "92CD0329-478D-EC3C-245B-C89417F1AFDE";
	setAttr ".t" -type "double3" -125 -1.1099999999999999e-13 93.75 ;
createNode locator -n "plocator708Shape" -p "plocator708";
	rename -uid "0FCAF5A6-41C8-B7A1-C861-7B9190494B49";
	setAttr -k off ".v";
createNode transform -n "plocator709" -p "cameraPGroup_pgroup_1_1";
	rename -uid "AF4E2138-40F1-ADC1-9AD5-A2A6BC85765D";
	setAttr ".t" -type "double3" -125 -1.1099999999999999e-13 125 ;
createNode locator -n "plocator709Shape" -p "plocator709";
	rename -uid "3042CE75-4FDB-01F6-E7F2-47879BFE37A0";
	setAttr -k off ".v";
createNode transform -n "plocator710" -p "cameraPGroup_pgroup_1_1";
	rename -uid "B0EEDA80-45F1-E7FA-011C-B5963AB7B7D6";
	setAttr ".t" -type "double3" -125 -1.1099999999999999e-13 156.25 ;
createNode locator -n "plocator710Shape" -p "plocator710";
	rename -uid "77493E79-4C32-D6F3-F259-778BFC4F59E4";
	setAttr -k off ".v";
createNode transform -n "plocator711" -p "cameraPGroup_pgroup_1_1";
	rename -uid "A992F006-4E08-E959-6480-429C371BE36E";
	setAttr ".t" -type "double3" -125 -1.1099999999999999e-13 187.5 ;
createNode locator -n "plocator711Shape" -p "plocator711";
	rename -uid "DD7100FC-4070-3B88-06F1-CE88CF182F59";
	setAttr -k off ".v";
createNode transform -n "plocator712" -p "cameraPGroup_pgroup_1_1";
	rename -uid "CEB7439A-4E58-ADCD-2896-F283F7AEBC23";
	setAttr ".t" -type "double3" -125 -1.1099999999999999e-13 218.75 ;
createNode locator -n "plocator712Shape" -p "plocator712";
	rename -uid "48703918-4CEB-F365-B3E4-C896FAFF331B";
	setAttr -k off ".v";
createNode transform -n "plocator713" -p "cameraPGroup_pgroup_1_1";
	rename -uid "D5A4C4A8-41D4-D9E5-16E2-B48F9D4C8572";
	setAttr ".t" -type "double3" -125 -1.1099999999999999e-13 250 ;
createNode locator -n "plocator713Shape" -p "plocator713";
	rename -uid "3BE428E7-4DF9-7DD2-1DE1-918ED4B5FE94";
	setAttr -k off ".v";
createNode transform -n "plocator714" -p "cameraPGroup_pgroup_1_1";
	rename -uid "FC5742B2-4A93-89E6-7251-E4A7917E047E";
	setAttr ".t" -type "double3" -125 -1.1099999999999999e-13 281.25 ;
createNode locator -n "plocator714Shape" -p "plocator714";
	rename -uid "1AE95BEC-4393-A2A3-E657-D99875D3E349";
	setAttr -k off ".v";
createNode transform -n "plocator722" -p "cameraPGroup_pgroup_1_1";
	rename -uid "E907EFB5-44B6-A55A-DBAA-AAAFB91BC7C7";
	setAttr ".t" -type "double3" -156.25 -1.1099999999999999e-13 -125 ;
createNode locator -n "plocator722Shape" -p "plocator722";
	rename -uid "48ECD327-40EA-9A07-F08B-73AD64DF4CAE";
	setAttr -k off ".v";
createNode transform -n "plocator723" -p "cameraPGroup_pgroup_1_1";
	rename -uid "15F8EEC8-472A-573D-6AF1-0B99ABE0F79A";
	setAttr ".t" -type "double3" -156.25 -1.1099999999999999e-13 -93.75 ;
createNode locator -n "plocator723Shape" -p "plocator723";
	rename -uid "FAA1DBC1-40CF-E62F-AAD2-FD9FFF973594";
	setAttr -k off ".v";
createNode transform -n "plocator724" -p "cameraPGroup_pgroup_1_1";
	rename -uid "9BCD3853-4FB8-F37F-23D9-EA9F2AAAB975";
	setAttr ".t" -type "double3" -156.25 -1.1099999999999999e-13 -62.5 ;
createNode locator -n "plocator724Shape" -p "plocator724";
	rename -uid "7FC5B06C-4344-576C-1B5C-F6AE9F918E5C";
	setAttr -k off ".v";
createNode transform -n "plocator725" -p "cameraPGroup_pgroup_1_1";
	rename -uid "524F56DA-4407-0904-F8CA-68BE6F4E8B63";
	setAttr ".t" -type "double3" -156.25 -1.1099999999999999e-13 -31.25 ;
createNode locator -n "plocator725Shape" -p "plocator725";
	rename -uid "C74BA8F4-415F-CBF9-84C4-5CBC5994B90E";
	setAttr -k off ".v";
createNode transform -n "plocator726" -p "cameraPGroup_pgroup_1_1";
	rename -uid "3CE5FD4A-4597-D915-970E-B69D6F2485C0";
	setAttr ".t" -type "double3" -156.25 -1.1099999999999999e-13 0 ;
createNode locator -n "plocator726Shape" -p "plocator726";
	rename -uid "C29C8F1B-43B2-6F3C-8928-8E885B740D1D";
	setAttr -k off ".v";
createNode transform -n "plocator727" -p "cameraPGroup_pgroup_1_1";
	rename -uid "7FE57D7E-4177-0934-2170-7B9A99058EB8";
	setAttr ".t" -type "double3" -156.25 -1.1099999999999999e-13 31.25 ;
createNode locator -n "plocator727Shape" -p "plocator727";
	rename -uid "EAB0BD43-492F-9101-DB0F-C89EA64CF177";
	setAttr -k off ".v";
createNode transform -n "plocator728" -p "cameraPGroup_pgroup_1_1";
	rename -uid "EB24A881-4247-59BC-5204-E092EA90A4A0";
	setAttr ".t" -type "double3" -156.25 -1.1099999999999999e-13 62.5 ;
createNode locator -n "plocator728Shape" -p "plocator728";
	rename -uid "EB7FA4ED-4270-D6A9-D2EC-6FA35B9B953D";
	setAttr -k off ".v";
createNode transform -n "plocator729" -p "cameraPGroup_pgroup_1_1";
	rename -uid "2020610E-426E-DE0F-23FA-B0BD7DA6FDEA";
	setAttr ".t" -type "double3" -156.25 -1.1099999999999999e-13 93.75 ;
createNode locator -n "plocator729Shape" -p "plocator729";
	rename -uid "C57342F1-4555-4A39-4524-F396D26D1DA1";
	setAttr -k off ".v";
createNode transform -n "plocator730" -p "cameraPGroup_pgroup_1_1";
	rename -uid "C428A500-4DBC-C28F-52DE-4E873A9027A7";
	setAttr ".t" -type "double3" -156.25 -1.1099999999999999e-13 125 ;
createNode locator -n "plocator730Shape" -p "plocator730";
	rename -uid "5F580E54-4BD1-510A-B47B-16A4EE67ABBA";
	setAttr -k off ".v";
createNode transform -n "plocator743" -p "cameraPGroup_pgroup_1_1";
	rename -uid "3A69D7A6-41D9-6C0A-E84E-D091A7EEC2C8";
	setAttr ".t" -type "double3" -156.25 -1.1099999999999999e-13 156.25 ;
createNode locator -n "plocator743Shape" -p "plocator743";
	rename -uid "0CE5B717-4238-D34B-07FC-E199EBD05A6E";
	setAttr -k off ".v";
createNode transform -n "plocator744" -p "cameraPGroup_pgroup_1_1";
	rename -uid "C282644C-4F1D-1090-1A98-A99E1AA51F49";
	setAttr ".t" -type "double3" -156.25 -1.1099999999999999e-13 187.5 ;
createNode locator -n "plocator744Shape" -p "plocator744";
	rename -uid "EF68ABE2-400B-D97C-88FA-528F368E7ED8";
	setAttr -k off ".v";
createNode transform -n "plocator745" -p "cameraPGroup_pgroup_1_1";
	rename -uid "785B1E4C-4444-A43D-5D69-F78097CE793C";
	setAttr ".t" -type "double3" -156.25 -1.1099999999999999e-13 218.75 ;
createNode locator -n "plocator745Shape" -p "plocator745";
	rename -uid "D97D6691-4C28-5AC2-6836-15A981E83762";
	setAttr -k off ".v";
createNode transform -n "plocator746" -p "cameraPGroup_pgroup_1_1";
	rename -uid "84F8B7D9-4166-0B30-1E51-F9B16AAD6BC4";
	setAttr ".t" -type "double3" -156.25 -1.1099999999999999e-13 250 ;
createNode locator -n "plocator746Shape" -p "plocator746";
	rename -uid "4D3614DC-438B-3581-FAB4-7B97946EA62D";
	setAttr -k off ".v";
createNode transform -n "plocator747" -p "cameraPGroup_pgroup_1_1";
	rename -uid "1DE8BEAA-47F8-0742-D45C-459A245C01A7";
	setAttr ".t" -type "double3" -156.25 -1.1099999999999999e-13 281.25 ;
createNode locator -n "plocator747Shape" -p "plocator747";
	rename -uid "F108C38E-45F5-E238-E1B1-8F9817790CE8";
	setAttr -k off ".v";
createNode transform -n "plocator770" -p "cameraPGroup_pgroup_1_1";
	rename -uid "877A5F18-4F06-6AF1-E731-1C905FA97FFF";
	setAttr ".t" -type "double3" -187.5 -1.1099999999999999e-13 -31.25 ;
createNode locator -n "plocator770Shape" -p "plocator770";
	rename -uid "8E956456-44B3-1AA7-503D-CF9754D58944";
	setAttr -k off ".v";
createNode transform -n "plocator771" -p "cameraPGroup_pgroup_1_1";
	rename -uid "65DD7938-41F7-5155-4433-D1B1084F5D12";
	setAttr ".t" -type "double3" -187.5 -1.1099999999999999e-13 0 ;
createNode locator -n "plocator771Shape" -p "plocator771";
	rename -uid "161A73A1-412A-162E-E617-FFB1D5FD3992";
	setAttr -k off ".v";
createNode transform -n "plocator772" -p "cameraPGroup_pgroup_1_1";
	rename -uid "43AD0866-4B86-E6A2-6831-108735AE10FD";
	setAttr ".t" -type "double3" -187.5 -1.1099999999999999e-13 31.25 ;
createNode locator -n "plocator772Shape" -p "plocator772";
	rename -uid "10F1FE64-428B-A27B-A1EE-F79D2B4E3773";
	setAttr -k off ".v";
createNode transform -n "plocator773" -p "cameraPGroup_pgroup_1_1";
	rename -uid "3F02FC05-410E-91EE-DED2-7FB80A98A9C8";
	setAttr ".t" -type "double3" -187.5 -1.1099999999999999e-13 62.5 ;
createNode locator -n "plocator773Shape" -p "plocator773";
	rename -uid "31891EA4-4425-9263-B1F5-16B03F7ECE25";
	setAttr -k off ".v";
createNode transform -n "plocator774" -p "cameraPGroup_pgroup_1_1";
	rename -uid "9DA37722-4663-8B16-36A3-B4A33A31A6E7";
	setAttr ".t" -type "double3" -187.5 -1.1099999999999999e-13 93.75 ;
createNode locator -n "plocator774Shape" -p "plocator774";
	rename -uid "4B1F9ADC-40C7-7B92-BB6E-1EAF8FD64CC9";
	setAttr -k off ".v";
createNode transform -n "plocator775" -p "cameraPGroup_pgroup_1_1";
	rename -uid "42DED604-4FF3-6997-31A6-7D819286C2C7";
	setAttr ".t" -type "double3" -187.5 -1.1099999999999999e-13 125 ;
createNode locator -n "plocator775Shape" -p "plocator775";
	rename -uid "4D20BC09-4B1B-9BC2-7515-6FA27DDCF3CB";
	setAttr -k off ".v";
createNode transform -n "plocator776" -p "cameraPGroup_pgroup_1_1";
	rename -uid "F7E2F402-4928-22F4-B72D-A18C36596F50";
	setAttr ".t" -type "double3" -187.5 -1.1099999999999999e-13 156.25 ;
createNode locator -n "plocator776Shape" -p "plocator776";
	rename -uid "E5E23E28-49AE-2254-CCAA-98BE4AC4C18F";
	setAttr -k off ".v";
createNode transform -n "plocator777" -p "cameraPGroup_pgroup_1_1";
	rename -uid "C0A2D12A-420A-AF82-5AC4-E589B36903CD";
	setAttr ".t" -type "double3" -187.5 -1.1099999999999999e-13 187.5 ;
createNode locator -n "plocator777Shape" -p "plocator777";
	rename -uid "45E1901D-453C-94D8-013A-B8BF20E93405";
	setAttr -k off ".v";
createNode transform -n "plocator778" -p "cameraPGroup_pgroup_1_1";
	rename -uid "C03A93D8-4ED6-5D90-9568-CC854A39580C";
	setAttr ".t" -type "double3" -187.5 -1.1099999999999999e-13 218.75 ;
createNode locator -n "plocator778Shape" -p "plocator778";
	rename -uid "C9641F28-41C6-B799-FF2F-69A1EA596E8D";
	setAttr -k off ".v";
createNode transform -n "plocator779" -p "cameraPGroup_pgroup_1_1";
	rename -uid "417568DA-497B-4425-250D-658D7AF61E49";
	setAttr ".t" -type "double3" -187.5 -1.1099999999999999e-13 250 ;
createNode locator -n "plocator779Shape" -p "plocator779";
	rename -uid "243C54D1-4268-A580-1A52-3B9E5CA724F9";
	setAttr -k off ".v";
createNode transform -n "plocator801" -p "cameraPGroup_pgroup_1_1";
	rename -uid "76744127-45FE-2D68-BA7D-E3ABACEA09F9";
	setAttr ".t" -type "double3" -218.75 -1.1099999999999999e-13 -93.75 ;
createNode locator -n "plocator801Shape" -p "plocator801";
	rename -uid "920C4B59-42F4-6499-E6B0-4CBDB6AFFE46";
	setAttr -k off ".v";
createNode transform -n "plocator802" -p "cameraPGroup_pgroup_1_1";
	rename -uid "94D40468-4FAF-B77A-F616-9FA2D09A33FB";
	setAttr ".t" -type "double3" -218.75 -1.1099999999999999e-13 -62.5 ;
createNode locator -n "plocator802Shape" -p "plocator802";
	rename -uid "219BDE6B-46D8-CCE5-6B84-21BD9FC2DCA7";
	setAttr -k off ".v";
createNode transform -n "plocator804" -p "cameraPGroup_pgroup_1_1";
	rename -uid "8B6CD3C1-4B3F-8C4B-80D2-0DB349339E4F";
	setAttr ".t" -type "double3" -218.75 -1.1099999999999999e-13 0 ;
createNode locator -n "plocator804Shape" -p "plocator804";
	rename -uid "EBA3AA52-4197-18A9-0404-3AB245486280";
	setAttr -k off ".v";
createNode transform -n "plocator805" -p "cameraPGroup_pgroup_1_1";
	rename -uid "FD4F224C-47F7-9AFE-BD7F-F4A566A13FA1";
	setAttr ".t" -type "double3" -218.75 -1.1099999999999999e-13 31.25 ;
createNode locator -n "plocator805Shape" -p "plocator805";
	rename -uid "7A7C3D2B-4E9B-3966-D1FD-8FA6ECE65127";
	setAttr -k off ".v";
createNode transform -n "plocator806" -p "cameraPGroup_pgroup_1_1";
	rename -uid "92AAF564-4C3D-548F-1CD9-ABB3034A98C4";
	setAttr ".t" -type "double3" -218.75 -1.1099999999999999e-13 62.5 ;
createNode locator -n "plocator806Shape" -p "plocator806";
	rename -uid "7A8AEF7E-4AAB-552A-23C1-2B92F2AA847F";
	setAttr -k off ".v";
createNode transform -n "plocator807" -p "cameraPGroup_pgroup_1_1";
	rename -uid "D66A9906-4ECC-0019-AD4A-C99473B24AC6";
	setAttr ".t" -type "double3" -218.75 -1.1099999999999999e-13 93.75 ;
createNode locator -n "plocator807Shape" -p "plocator807";
	rename -uid "F8950FE8-4B2D-56ED-836D-A5B35EBEDC99";
	setAttr -k off ".v";
createNode transform -n "plocator808" -p "cameraPGroup_pgroup_1_1";
	rename -uid "FF2F8223-4E0D-5A56-28E2-12AED84EB041";
	setAttr ".t" -type "double3" -218.75 -1.1099999999999999e-13 125 ;
createNode locator -n "plocator808Shape" -p "plocator808";
	rename -uid "77ECDCF9-4735-9DDD-E209-D78C27E756AE";
	setAttr -k off ".v";
createNode transform -n "plocator809" -p "cameraPGroup_pgroup_1_1";
	rename -uid "BFFCC66D-471F-D0B6-BE71-3EAFF04F4B2B";
	setAttr ".t" -type "double3" -218.75 -1.1099999999999999e-13 156.25 ;
createNode locator -n "plocator809Shape" -p "plocator809";
	rename -uid "B8071D1E-4D18-062F-BDF6-B38614DE98CE";
	setAttr -k off ".v";
createNode transform -n "plocator810" -p "cameraPGroup_pgroup_1_1";
	rename -uid "91A49058-4B7E-3293-552A-2889C9A3ED39";
	setAttr ".t" -type "double3" -218.75 -1.1099999999999999e-13 187.5 ;
createNode locator -n "plocator810Shape" -p "plocator810";
	rename -uid "01E75A68-4393-8C8C-B0A7-64830F302264";
	setAttr -k off ".v";
createNode transform -n "plocator811" -p "cameraPGroup_pgroup_1_1";
	rename -uid "DCB79BB5-4630-E87C-619E-E7B20F077A3C";
	setAttr ".t" -type "double3" -218.75 -1.1099999999999999e-13 218.75 ;
createNode locator -n "plocator811Shape" -p "plocator811";
	rename -uid "21C76DB7-49B9-3463-5D4E-5AA7BA02F9C2";
	setAttr -k off ".v";
createNode transform -n "plocator812" -p "cameraPGroup_pgroup_1_1";
	rename -uid "43947DF3-4404-5FA4-60C4-E58096C562FA";
	setAttr ".t" -type "double3" -218.75 -1.1099999999999999e-13 250 ;
createNode locator -n "plocator812Shape" -p "plocator812";
	rename -uid "BC9C8748-452E-9418-78F7-5B8EF63B07F2";
	setAttr -k off ".v";
createNode transform -n "plocator823" -p "cameraPGroup_pgroup_1_1";
	rename -uid "7F20C71C-4498-1C0F-6FE2-0EB2F22A8EF2";
	setAttr ".t" -type "double3" -250 -1.1099999999999999e-13 -62.5 ;
createNode locator -n "plocator823Shape" -p "plocator823";
	rename -uid "141C23AD-4C64-641C-5378-3FBB80C56CB4";
	setAttr -k off ".v";
createNode transform -n "plocator824" -p "cameraPGroup_pgroup_1_1";
	rename -uid "F6C755A9-47D9-78E2-5353-0894A10F3371";
	setAttr ".t" -type "double3" -250 -1.1099999999999999e-13 -31.25 ;
createNode locator -n "plocator824Shape" -p "plocator824";
	rename -uid "6F471773-4323-4AE5-B7AA-74BEAF6BC20F";
	setAttr -k off ".v";
createNode transform -n "plocator839" -p "cameraPGroup_pgroup_1_1";
	rename -uid "140FC672-4B9D-918B-9F7B-8BAFB3A7FBBC";
	setAttr ".t" -type "double3" -250 -1.1099999999999999e-13 62.5 ;
createNode locator -n "plocator839Shape" -p "plocator839";
	rename -uid "7F344456-4808-7D8B-D91A-999D7F720D0D";
	setAttr -k off ".v";
createNode transform -n "plocator840" -p "cameraPGroup_pgroup_1_1";
	rename -uid "62B75423-4DD6-8B01-A193-44B9C90A4291";
	setAttr ".t" -type "double3" -250 -1.1099999999999999e-13 93.75 ;
createNode locator -n "plocator840Shape" -p "plocator840";
	rename -uid "74C22315-4988-F8A1-927E-6BB468C6D09A";
	setAttr -k off ".v";
createNode transform -n "plocator841" -p "cameraPGroup_pgroup_1_1";
	rename -uid "52780CB1-40DB-145C-4BE8-DBA705119A7A";
	setAttr ".t" -type "double3" -250 -1.1099999999999999e-13 125 ;
createNode locator -n "plocator841Shape" -p "plocator841";
	rename -uid "AB8EF99A-4DDB-7948-8AD0-27AB7C9E5353";
	setAttr -k off ".v";
createNode transform -n "plocator842" -p "cameraPGroup_pgroup_1_1";
	rename -uid "10E97CF8-4096-444B-DDB3-BBAD8802B91E";
	setAttr ".t" -type "double3" -250 -1.1099999999999999e-13 156.25 ;
createNode locator -n "plocator842Shape" -p "plocator842";
	rename -uid "FDAA43C7-4EF9-C0B4-BA2D-218DE01FF51D";
	setAttr -k off ".v";
createNode transform -n "plocator843" -p "cameraPGroup_pgroup_1_1";
	rename -uid "1E0C1D26-48CD-6AEB-3C00-DC93ADBE5C0B";
	setAttr ".t" -type "double3" -250 -1.1099999999999999e-13 187.5 ;
createNode locator -n "plocator843Shape" -p "plocator843";
	rename -uid "7E16773D-45B1-8F62-4B03-63A1DFDFDF02";
	setAttr -k off ".v";
createNode transform -n "plocator844" -p "cameraPGroup_pgroup_1_1";
	rename -uid "BF1786A3-4481-C764-A9C4-C9B2D74E4FA9";
	setAttr ".t" -type "double3" -250 -1.1099999999999999e-13 218.75 ;
createNode locator -n "plocator844Shape" -p "plocator844";
	rename -uid "0F2288F4-4C53-EBF0-484F-83B2CEEB92E4";
	setAttr -k off ".v";
createNode transform -n "plocator845" -p "cameraPGroup_pgroup_1_1";
	rename -uid "E9BE2F32-4107-7EB6-BA2F-5E90ABE89A81";
	setAttr ".t" -type "double3" -250 -1.1099999999999999e-13 250 ;
createNode locator -n "plocator845Shape" -p "plocator845";
	rename -uid "88A111EA-4CCB-708E-BFA8-75826A76BB11";
	setAttr -k off ".v";
createNode transform -n "plocator869" -p "cameraPGroup_pgroup_1_1";
	rename -uid "A87E88E7-4A75-8A73-A95D-A390F1877DC5";
	setAttr ".t" -type "double3" -281.25 -1.1099999999999999e-13 -31.25 ;
createNode locator -n "plocator869Shape" -p "plocator869";
	rename -uid "126CD36E-49B7-C486-1643-3B9961DE28FD";
	setAttr -k off ".v";
createNode transform -n "plocator870" -p "cameraPGroup_pgroup_1_1";
	rename -uid "0CA39B74-4BD3-80A7-D305-99A70BF8B61B";
	setAttr ".t" -type "double3" -281.25 -1.1099999999999999e-13 0 ;
createNode locator -n "plocator870Shape" -p "plocator870";
	rename -uid "B3B5C692-40D1-AD10-613C-C486189E9FCF";
	setAttr -k off ".v";
createNode transform -n "plocator871" -p "cameraPGroup_pgroup_1_1";
	rename -uid "9E36A31D-46C3-3219-E92B-1583533DE7F7";
	setAttr ".t" -type "double3" -281.25 -1.1099999999999999e-13 31.25 ;
createNode locator -n "plocator871Shape" -p "plocator871";
	rename -uid "83051884-4394-7D9D-DBB0-F5B1BD15D98E";
	setAttr -k off ".v";
createNode transform -n "plocator872" -p "cameraPGroup_pgroup_1_1";
	rename -uid "F15B8EC6-41CD-9FC2-8B24-D7807D4601A5";
	setAttr ".t" -type "double3" -281.25 -1.1099999999999999e-13 62.5 ;
createNode locator -n "plocator872Shape" -p "plocator872";
	rename -uid "0BC6EC81-4186-5F39-1217-4287CDAB5F25";
	setAttr -k off ".v";
createNode transform -n "plocator873" -p "cameraPGroup_pgroup_1_1";
	rename -uid "DE75B64D-426E-7496-390B-BF9958C3D67D";
	setAttr ".t" -type "double3" -281.25 -1.1099999999999999e-13 93.75 ;
createNode locator -n "plocator873Shape" -p "plocator873";
	rename -uid "18614839-4D0E-6E6C-BC35-699C57A757AF";
	setAttr -k off ".v";
createNode transform -n "plocator874" -p "cameraPGroup_pgroup_1_1";
	rename -uid "37E0C806-43C0-218C-A546-74AC8E6CF242";
	setAttr ".t" -type "double3" -281.25 -1.1099999999999999e-13 125 ;
createNode locator -n "plocator874Shape" -p "plocator874";
	rename -uid "6BD73761-44E2-152C-5C9E-D398803255E7";
	setAttr -k off ".v";
createNode transform -n "plocator875" -p "cameraPGroup_pgroup_1_1";
	rename -uid "769CC7B6-47CE-A27D-FE0A-62B17B1F86F8";
	setAttr ".t" -type "double3" -281.25 -1.1099999999999999e-13 156.25 ;
createNode locator -n "plocator875Shape" -p "plocator875";
	rename -uid "BCDE08AB-4D99-7282-ECDF-8B80CC75C9A9";
	setAttr -k off ".v";
createNode transform -n "plocator876" -p "cameraPGroup_pgroup_1_1";
	rename -uid "B014A750-443A-D5D7-4984-BB88AABD22DB";
	setAttr ".t" -type "double3" -281.25 -1.1099999999999999e-13 187.5 ;
createNode locator -n "plocator876Shape" -p "plocator876";
	rename -uid "F319852A-443D-FE22-EF12-8B951D61CD8F";
	setAttr -k off ".v";
createNode transform -n "plocator877" -p "cameraPGroup_pgroup_1_1";
	rename -uid "5E8B693B-42EE-932E-594A-68AF7929A38A";
	setAttr ".t" -type "double3" -281.25 -1.1099999999999999e-13 218.75 ;
createNode locator -n "plocator877Shape" -p "plocator877";
	rename -uid "CEBAD10B-48C6-45D5-CA37-209138B8B5F6";
	setAttr -k off ".v";
createNode transform -n "plocator903" -p "cameraPGroup_pgroup_1_1";
	rename -uid "3984B3E4-4984-0773-FA6D-9A962710A057";
	setAttr ".t" -type "double3" -312.5 -1.1099999999999999e-13 0 ;
createNode locator -n "plocator903Shape" -p "plocator903";
	rename -uid "3B8F7A54-4812-085A-C409-348A18399DB1";
	setAttr -k off ".v";
createNode transform -n "plocator904" -p "cameraPGroup_pgroup_1_1";
	rename -uid "AE1026F4-4D78-883C-DAA5-0DBF7D77D0D8";
	setAttr ".t" -type "double3" -312.5 -1.1099999999999999e-13 31.25 ;
createNode locator -n "plocator904Shape" -p "plocator904";
	rename -uid "6234C845-42B7-DBE2-EFA7-A1A718CDB4A3";
	setAttr -k off ".v";
createNode transform -n "plocator905" -p "cameraPGroup_pgroup_1_1";
	rename -uid "9620382D-4097-F2AC-9A61-DCB239280850";
	setAttr ".t" -type "double3" -312.5 -1.1099999999999999e-13 62.5 ;
createNode locator -n "plocator905Shape" -p "plocator905";
	rename -uid "763E505F-4B41-3BD5-E75A-92A1EB833211";
	setAttr -k off ".v";
createNode transform -n "plocator908" -p "cameraPGroup_pgroup_1_1";
	rename -uid "9D7433CF-4ED1-0861-0564-A2B0E82278C4";
	setAttr ".t" -type "double3" -312.5 -1.1099999999999999e-13 156.25 ;
createNode locator -n "plocator908Shape" -p "plocator908";
	rename -uid "46E347C9-4844-CC74-3128-11865315EF8D";
	setAttr -k off ".v";
createNode transform -n "plocator909" -p "cameraPGroup_pgroup_1_1";
	rename -uid "A092F3B6-483F-2C05-7FBF-CC9B763B472B";
	setAttr ".t" -type "double3" -312.5 -1.1099999999999999e-13 187.5 ;
createNode locator -n "plocator909Shape" -p "plocator909";
	rename -uid "545C6215-4D26-7BF3-4533-11B6FCC2154B";
	setAttr -k off ".v";
createNode transform -n "plocator910" -p "cameraPGroup_pgroup_1_1";
	rename -uid "ADE4492E-45E2-3381-6A4D-268CE64DD826";
	setAttr ".t" -type "double3" -312.5 -1.1099999999999999e-13 218.75 ;
createNode locator -n "plocator910Shape" -p "plocator910";
	rename -uid "69AD5276-4DC4-628D-48A9-E6A4A595958A";
	setAttr -k off ".v";
createNode transform -n "plocator937" -p "cameraPGroup_pgroup_1_1";
	rename -uid "03CE5D1B-4542-D7DF-3F5F-0EBB631645A4";
	setAttr ".t" -type "double3" -343.75 -1.1099999999999999e-13 31.25 ;
createNode locator -n "plocator937Shape" -p "plocator937";
	rename -uid "1CC4A0A2-45C0-1371-7F9F-D1BCA03E3AEB";
	setAttr -k off ".v";
createNode transform -n "plocator938" -p "cameraPGroup_pgroup_1_1";
	rename -uid "ECD1B419-42B2-2ABC-E4D0-CDA929153221";
	setAttr ".t" -type "double3" -343.75 -1.1099999999999999e-13 62.5 ;
createNode locator -n "plocator938Shape" -p "plocator938";
	rename -uid "8E6F2934-400D-A5AB-929C-ADA8F53D60D5";
	setAttr -k off ".v";
createNode transform -n "plocator943" -p "cameraPGroup_pgroup_1_1";
	rename -uid "A5804995-46D0-49E4-9DB9-518EB46B5091";
	setAttr ".t" -type "double3" -343.75 -1.1099999999999999e-13 218.75 ;
createNode locator -n "plocator943Shape" -p "plocator943";
	rename -uid "6764C87E-49FA-8244-0F29-09A9A5C6617D";
	setAttr -k off ".v";
createNode transform -n "plocator959" -p "cameraPGroup_pgroup_1_1";
	rename -uid "E2D0977D-4587-6C5B-BC50-BEACC9D4CEDC";
	setAttr ".t" -type "double3" -375 -1.1099999999999999e-13 62.5 ;
createNode locator -n "plocator959Shape" -p "plocator959";
	rename -uid "643FD320-4E80-239D-89DF-8493210DD6D5";
	setAttr -k off ".v";
createNode transform -n "Scene";
	rename -uid "BAA964D5-4A3D-995C-BE15-1EB647C67F0C";
	setAttr ".ro" 2;
createNode transform -n "camera_1_2" -p "Scene";
	rename -uid "3D71C54C-41B2-62B1-B8E7-C59A40E445A6";
	setAttr ".v" no;
	setAttr ".ro" 2;
createNode camera -n "camera_1_1Shape2" -p "camera_1_2";
	rename -uid "01619A65-42A7-CCEB-93AE-86BA695DFCA4";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.417322834645669 0.797244094488189 ;
	setAttr ".ff" 3;
	setAttr ".ncp" 0.01;
	setAttr ".sa" 180;
	setAttr ".imn" -type "string" "camera_1_2";
	setAttr ".den" -type "string" "camera_1_2_depth";
	setAttr ".man" -type "string" "camera_1_2_mask";
	setAttr ".lls" 5;
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -n "imagePlane2" -p "camera_1_1Shape2";
	rename -uid "D93D6A1F-497A-2FDD-DFD9-9E97FCE9C522";
createNode imagePlane -n "imagePlaneShape2" -p "imagePlane2";
	rename -uid "672ED7B6-4D53-F4F0-E3A7-FB8EAAF8E781";
	setAttr -k off ".v";
	setAttr ".fc" 102;
	setAttr ".imn" -type "string" "/home/hko/mmlec/week4/plate/png/object_tracking.0001.png";
	setAttr ".ufe" yes;
	setAttr ".cov" -type "short2" 1920 1080 ;
	setAttr ".f" 4;
	setAttr ".dic" yes;
	setAttr ".d" 4500;
	setAttr ".s" -type "double2" 1.417322834645669 0.797244094488189 ;
	setAttr ".w" 19.199999999999996;
	setAttr ".h" 10.799999999999999;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "cameraPGroup_pgroup_4_1" -p "Scene";
	rename -uid "B912C43B-44B8-EC9D-DC35-F3BF6F4DB566";
	setAttr ".ro" 2;
createNode transform -n "objectPGroup_pgroup_3_1_1" -p "Scene";
	rename -uid "9391340A-4D1C-37B3-1E41-B198FC22C7DD";
	setAttr ".ro" 2;
createNode transform -n "p01" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "C9A57119-428F-861A-505E-67B4CBF4B549";
	setAttr ".t" -type "double3" -14.999998 18.867075 35.000008 ;
createNode locator -n "p01Shape" -p "p01";
	rename -uid "54A9CDB8-462B-B72A-EE18-5C905C820655";
	setAttr -k off ".v";
createNode transform -n "p02" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "6AEE1638-4857-2E8C-A909-75819DD3B71F";
	setAttr ".t" -type "double3" -11.873581 18.867075 35.000008 ;
createNode locator -n "p02Shape" -p "p02";
	rename -uid "6A5BCAE3-4086-4F32-5501-F2AEDD1ACBE8";
	setAttr -k off ".v";
createNode transform -n "p03" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "AC6A7C34-4E9B-D651-93D4-198A4493B98E";
	setAttr ".t" -type "double3" -11.873581 15.740657 35.000008 ;
createNode locator -n "p03Shape" -p "p03";
	rename -uid "52EC0676-4D05-09D0-3286-B3A1F7D85C93";
	setAttr -k off ".v";
createNode transform -n "p04" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "6E43EE0D-411C-19EE-7E6B-15863EC9047D";
	setAttr ".t" -type "double3" 11.873582 15.740655 35.000008 ;
createNode locator -n "p04Shape" -p "p04";
	rename -uid "459B32AB-4959-28DD-3579-DEB2E0C11D0B";
	setAttr -k off ".v";
createNode transform -n "p05" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "51147556-4B5B-B581-8A6A-F1AF2D5FE259";
	setAttr ".t" -type "double3" 11.873582 18.867073 35.000008 ;
createNode locator -n "p05Shape" -p "p05";
	rename -uid "9B6F21BF-433B-E3DB-C6B9-73B9188B3673";
	setAttr -k off ".v";
createNode transform -n "p06" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "88808800-42AA-6D68-11BB-A0A6D5D469B5";
	setAttr ".t" -type "double3" 14.999999 18.867073 35.000008 ;
createNode locator -n "p06Shape" -p "p06";
	rename -uid "ECCBD9BC-4D2B-7EFE-C53E-E984F85ABA2E";
	setAttr -k off ".v";
createNode transform -n "p07" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "1AD85BCA-4C40-27F5-B87E-8C9E85DD5144";
	setAttr ".t" -type "double3" 15 15.740656 35.000008 ;
createNode locator -n "p07Shape" -p "p07";
	rename -uid "7B7B0584-489B-0D9F-1545-D7B5DFF1509B";
	setAttr -k off ".v";
createNode transform -n "p08" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "1C1C075F-4BDC-B7AD-485A-A78F153B75D9";
	setAttr ".t" -type "double3" 15 7.171637 35.000008 ;
createNode locator -n "p08Shape" -p "p08";
	rename -uid "6BA80A4D-48AD-D072-36BC-E4BF4A5BB48F";
	setAttr -k off ".v";
createNode transform -n "p09" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "8D58BE63-4C97-04D0-0C0A-0F93FF2533C6";
	setAttr ".t" -type "double3" 15 7.171637 18.601295 ;
createNode locator -n "p09Shape" -p "p09";
	rename -uid "0EAFA331-40D2-2B3B-0DDA-A5B95F692BA6";
	setAttr -k off ".v";
createNode transform -n "p10" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "38D9155F-420A-0D19-6CDF-8FA762AE6FB3";
	setAttr ".t" -type "double3" 15 7.171637 -18.601295 ;
createNode locator -n "p10Shape" -p "p10";
	rename -uid "6D02842E-4B00-7295-6294-AEB8C1FFDA13";
	setAttr -k off ".v";
createNode transform -n "p11" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "3E5F4C8F-47CD-35A5-546F-6AACC954BB62";
	setAttr ".t" -type "double3" 15 7.171637 -35.000008 ;
createNode locator -n "p11Shape" -p "p11";
	rename -uid "D771A862-466B-B43C-069B-2B9CA3D41B31";
	setAttr -k off ".v";
createNode transform -n "p12" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "4A2AD062-496F-3A1A-CD28-D89B47830762";
	setAttr ".t" -type "double3" 15 15.740656 -35.000008 ;
createNode locator -n "p12Shape" -p "p12";
	rename -uid "8E7D2F7B-4CFD-D384-FF97-6D9CB493F518";
	setAttr -k off ".v";
createNode transform -n "p13" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "9F1A3C23-4D51-89AB-9610-E8A631B331D9";
	setAttr ".t" -type "double3" 15 15.740654 -18.601295 ;
createNode locator -n "p13Shape" -p "p13";
	rename -uid "80138A0F-4F78-2A00-8FB6-D9A7A1C34EF6";
	setAttr -k off ".v";
createNode transform -n "p14" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "687B6CF6-4CFD-9B45-4E4E-259AEAF29F7E";
	setAttr ".t" -type "double3" 10.977759 30.740654 -10.151496 ;
createNode locator -n "p14Shape" -p "p14";
	rename -uid "0B57BCBA-40A1-F566-E369-91B01563F7CF";
	setAttr -k off ".v";
createNode transform -n "p15" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "059E9483-467B-8B1B-1FBA-05A36F61C66F";
	setAttr ".t" -type "double3" 10.977759 30.740654 10.151496 ;
createNode locator -n "p15Shape" -p "p15";
	rename -uid "BEA867CA-4867-93B7-4AE8-41BB1D601198";
	setAttr -k off ".v";
createNode transform -n "p16" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "FFD4A730-4954-E842-8BBB-BC8A23AABC26";
	setAttr ".t" -type "double3" 15 15.740654 18.601295 ;
createNode locator -n "p16Shape" -p "p16";
	rename -uid "67D6FBE8-4FDB-C34A-A9D5-7484EF47F0E6";
	setAttr -k off ".v";
createNode transform -n "p17" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "29633383-4B34-5E52-CC92-A18B06B1199A";
	setAttr ".t" -type "double3" 14.999999 15.740655 31.873589 ;
createNode locator -n "p17Shape" -p "p17";
	rename -uid "914021A1-4F9A-A1D3-DC6D-5191D0D34856";
	setAttr -k off ".v";
createNode transform -n "p18" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "BFC7850E-4829-12E2-B92E-B3B5EE701EA2";
	setAttr ".t" -type "double3" 14.999999 18.867073 31.873589 ;
createNode locator -n "p18Shape" -p "p18";
	rename -uid "E4C23487-4D73-0E65-23FF-339B9E4F1BEE";
	setAttr -k off ".v";
createNode transform -n "p19" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "DAFE8306-4CB2-0998-066E-E3B534AFC336";
	setAttr ".t" -type "double3" 11.873582 18.867073 31.873589 ;
createNode locator -n "p19Shape" -p "p19";
	rename -uid "378059F0-412A-FA3C-A438-5790813C0C0D";
	setAttr -k off ".v";
createNode transform -n "p20" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "BC6822F7-4C2D-D4EB-9406-699F68AC296B";
	setAttr ".t" -type "double3" 11.873582 15.740655 31.873589 ;
createNode locator -n "p20Shape" -p "p20";
	rename -uid "13919968-4D29-E37D-208E-A697A60E9C31";
	setAttr -k off ".v";
createNode transform -n "p21" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "E78838AB-4385-E8E3-A672-F282C7880431";
	setAttr ".t" -type "double3" -11.873581 15.740657 31.873589 ;
createNode locator -n "p21Shape" -p "p21";
	rename -uid "10A726CA-4EB6-F0F2-922D-78A7ADE6B91C";
	setAttr -k off ".v";
createNode transform -n "p22" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "92FAB67A-4166-C6DB-467B-1FB6B4D81716";
	setAttr ".t" -type "double3" -11.873581 18.867075 31.873589 ;
createNode locator -n "p22Shape" -p "p22";
	rename -uid "F222B173-4410-236B-3608-DE9C04964E5A";
	setAttr -k off ".v";
createNode transform -n "p23" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "B03EF4E5-4601-45D2-340D-CEAB8C9D18A0";
	setAttr ".t" -type "double3" -14.999998 18.867075 31.873589 ;
createNode locator -n "p23Shape" -p "p23";
	rename -uid "E76D3799-45A1-1047-045A-0098EC2BA3AB";
	setAttr -k off ".v";
createNode transform -n "p24" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "C3DA1E43-481D-EB50-6835-B1945392876A";
	setAttr ".t" -type "double3" -14.999998 15.740657 31.873589 ;
createNode locator -n "p24Shape" -p "p24";
	rename -uid "C5FC26E4-469A-A9FA-9E39-A89762A1DD59";
	setAttr -k off ".v";
createNode transform -n "p25" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "F3DB096B-4E65-B47A-379C-F5B85906FE7C";
	setAttr ".t" -type "double3" -15 15.740656 35.000008 ;
createNode locator -n "p25Shape" -p "p25";
	rename -uid "D213DE73-49AF-3638-56EA-8887E6327668";
	setAttr -k off ".v";
createNode transform -n "p26" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "C7EFCB87-4AD7-5150-1E48-EEB8DA16AEBD";
	setAttr ".t" -type "double3" -15 7.171637 35.000008 ;
createNode locator -n "p26Shape" -p "p26";
	rename -uid "91A17581-4A32-BF3E-11D9-C69394071B6A";
	setAttr -k off ".v";
createNode transform -n "p27" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "48C098D3-4CEB-2CA6-F80B-BA959DB1E6D1";
	setAttr ".t" -type "double3" -15 7.171637 18.601295 ;
createNode locator -n "p27Shape" -p "p27";
	rename -uid "E6286FC9-43DE-C363-3111-78BF62920E7C";
	setAttr -k off ".v";
createNode transform -n "p28" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "914AE4D6-4B24-DF32-E2F2-D3A15D200600";
	setAttr ".t" -type "double3" -15 7.171637 -18.601295 ;
createNode locator -n "p28Shape" -p "p28";
	rename -uid "D213A33A-493F-BD50-30B5-ABAF9F1BEEBC";
	setAttr -k off ".v";
createNode transform -n "p29" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "C470EEBA-4D6E-D458-BEC5-CD923441BD46";
	setAttr ".t" -type "double3" -15 7.171637 -35.000008 ;
createNode locator -n "p29Shape" -p "p29";
	rename -uid "4B9A6551-4569-AF21-EE93-C88AB2885769";
	setAttr -k off ".v";
createNode transform -n "p30" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "021FB950-43B2-5D30-158A-E8B1CEDAEEC8";
	setAttr ".t" -type "double3" -15 15.740656 -35.000008 ;
createNode locator -n "p30Shape" -p "p30";
	rename -uid "7FDA096B-4E75-DFA3-1E37-6CBA50A68665";
	setAttr -k off ".v";
createNode transform -n "p31" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "03170E75-4B6B-5293-B0A6-94A692795E21";
	setAttr ".t" -type "double3" -15 15.740654 -18.601295 ;
createNode locator -n "p31Shape" -p "p31";
	rename -uid "B0ECA5AF-43F8-7C67-1122-2E85CC9ACF13";
	setAttr -k off ".v";
createNode transform -n "p32" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "EC71A739-4795-E9CC-38AB-2E84FCE843D6";
	setAttr ".t" -type "double3" -10.977759 30.740654 -10.151496 ;
createNode locator -n "p32Shape" -p "p32";
	rename -uid "6ED947CF-4B49-7C29-5120-5C84631E6A02";
	setAttr -k off ".v";
createNode transform -n "p33" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "02E3C1A6-41F8-D493-ABFD-5D952F1F438F";
	setAttr ".t" -type "double3" -10.977759 30.740654 10.151496 ;
createNode locator -n "p33Shape" -p "p33";
	rename -uid "1564CC30-474D-0077-36BC-42892E65D79C";
	setAttr -k off ".v";
createNode transform -n "p34" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "C07E7CD5-4AE3-9CC4-8355-80868147F0CD";
	setAttr ".t" -type "double3" -15 15.740654 18.601295 ;
createNode locator -n "p34Shape" -p "p34";
	rename -uid "B0BF2F54-4817-E19C-5B5D-FAB626CEA2FB";
	setAttr -k off ".v";
createNode transform -n "p42" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "54C123CF-4588-C365-EE45-9DA1ACA7C1A1";
	setAttr ".t" -type "double3" 14.021655 -0.00246 22.493271 ;
createNode locator -n "p42Shape" -p "p42";
	rename -uid "2407E47E-4123-4A53-D6C0-ABB2C4DF52AF";
	setAttr -k off ".v";
createNode transform -n "p43" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "49E01A3E-46F3-209C-900F-B8A5EFCA7435";
	setAttr ".t" -type "double3" 14.021655 -0.00246 -22.493271 ;
createNode locator -n "p43Shape" -p "p43";
	rename -uid "9469844A-4868-9CFF-0ACC-79B3901A686F";
	setAttr -k off ".v";
createNode transform -n "p44" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "796BB54E-4AE3-D451-0B6E-5894D5D5A0B5";
	setAttr ".t" -type "double3" -14.021655 -0.00246 22.493271 ;
createNode locator -n "p44Shape" -p "p44";
	rename -uid "B298374C-4865-CD08-2FB1-D687D021CE21";
	setAttr -k off ".v";
createNode transform -n "p45" -p "objectPGroup_pgroup_3_1_1";
	rename -uid "7EEA6EA6-46DD-E153-39D4-DA97B7CD1999";
	setAttr ".t" -type "double3" -14.021655 -0.00246 -22.493271 ;
createNode locator -n "p45Shape" -p "p45";
	rename -uid "BB7EA8E7-417D-9103-CEEE-CC85FB1CC8D6";
	setAttr -k off ".v";
createNode parentConstraint -n "Scene_parentConstraint1" -p "Scene";
	rename -uid "58BED3E2-4132-6B93-B5E4-43BCC1B936FF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "camera_1_1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -32.823529411800045 -12.352941176500002 -4.7310304029182438e-16 ;
	setAttr ".rst" -type "double3" -72.318457734100207 85.121973501800369 -109.06349510899983 ;
	setAttr ".rsrr" -type "double3" -34.200000000000053 -40.799999999999976 -1.9227598739416683e-15 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "724E1940-0000-1343-5DD9-2EA7000004B1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "724E1940-0000-1343-5DD9-2EA7000004B2";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "724E1940-0000-1343-5DD9-2EA7000004B3";
createNode displayLayerManager -n "layerManager";
	rename -uid "724E1940-0000-1343-5DD9-2EA7000004B4";
createNode displayLayer -n "defaultLayer";
	rename -uid "77EA6DC6-4029-1E0D-498D-9E957FAE98A2";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "724E1940-0000-1343-5DD9-2EA7000004B6";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "6F39EB99-4C62-9856-F6B2-8483E38A8448";
	setAttr ".g" yes;
createNode animCurveTL -n "camera_1_1_translateX";
	rename -uid "2ECEFF37-42C8-90D0-9546-DEBDD598663A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 -72.318457734100207 2 -71.0555882875002 3 -69.785208235800113 4 -68.50724866900012 5 -67.221640677200071
		 6 -65.928315350200052 7 -64.627203778200069 8 -63.318237051100141 9 -62.001346258900135 10 -60.676462491700121 11 -59.343516839400095 12 -58.002440392000132 13 -56.653164239500086 14 -55.295619471900046
		 15 -53.929737179300133 16 -52.555448451600085 17 -51.172684378900129 18 -49.781376051100182 19 -48.381454558200062 20 -46.972850990300088 21 -45.555496437400159 22 -44.129321989300173 23 -42.694258736200076
		 24 -41.250237768100092 25 -39.797190174900088 26 -38.335047046700041 27 -36.863739473500083 28 -35.383198545100136 29 -33.893355351800139 30 -32.394140983400135 31 -30.885486530000133 32 -29.368984300299982
		 33 -27.846322055200062 34 -26.317573947200081 35 -24.782814128500092 36 -23.242116751500028 37 -21.695555968400051 38 -20.143205931600065 39 -18.5851407934001 40 -17.021434706100063 41 -15.452161822000051
		 42 -13.877396293400007 43 -12.297212272700005 44 -10.71168391219997 45 -9.1208853641200918 46 -7.5248907808700416 47 -5.923774314740033 48 -4.3176101180400508 49 -2.7064723430900379 50 -1.0904351421900069
		 51 0.53042733231796801 52 2.1560409281400141 53 3.7863314929399592 54 5.4212248744199858 55 7.0606469202599893 56 8.7045234781400076 57 10.352780395800012 58 12.00534352079999 59 13.662138700899945
		 60 15.32309178380001 61 16.988128617100031 62 18.657175048599989 63 20.330156926000054 64 22.007000096800038 65 23.687630408900009 66 25.371973709800017 67 27.059955847300014 68 28.751502669100013
		 69 30.446540022799994 70 32.144993756100099 71 33.84678971670008 72 35.55185375230009 73 37.260111710600086 74 38.971489439300015 75 40.685912786000003 76 42.403307598400019 77 44.123599724200076
		 78 45.846715011200054 79 47.572579306900153 80 49.301118459000079 81 51.032258315400071 82 52.765924723500163 83 54.502043531200101 84 56.240540586100053 85 57.981341735800086 86 59.72437282810013
		 87 61.469559710700125 88 63.216828231300134 89 64.96610423740006 90 66.717313576800137 91 68.470382097300174 92 70.225235646400137 93 71.981800071900153 94 73.740001221400163 95 75.499764942700097
		 96 77.261017083300175 97 79.023683491100201 98 80.787690013600127 99 82.552962498600124 100 84.319426793800176 101 86.087008746800166 102 87.855634205300177 103 89.62522901700018
		 104 91.39571902960013 105 93.167030090700138 106 94.939088048100174 107 96.711818749500139 108 98.485148042500157 109 100.25900177500017 110 102.03330579400021 111 103.80798594800025
		 112 105.5829680840002 113 107.35817805100031 114 109.13354169500018 115 110.90898486400025 116 112.68443340700018 117 114.45981317000025 118 116.23505000200032 119 118.01006975000031
		 120 119.78479826200031;
createNode animCurveTL -n "camera_1_1_translateY";
	rename -uid "CEC221D0-4F9F-93B5-8265-CD8D577C8CF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 85.121973501800369 2 85.006443846100396 3 84.8917534336003 4 84.778118216600234 5 84.665754147400307
		 6 84.554877178500263 7 84.445703262300242 8 84.33844835110024 9 84.23332839720041 10 84.130559353200283 11 84.030357171300267 12 83.932937804000275 13 83.838517203600148 14 83.747311322500238
		 15 83.659536113000399 16 83.575407527600348 17 83.495141518700422 18 83.418954038500416 19 83.347061039600305 20 83.279678474200352 21 83.217022294800387 22 83.159308453800392 23 83.106752903400377
		 24 83.059571596100199 25 83.017980484300409 26 82.982195520400182 27 82.952432656700324 28 82.928907845600406 29 82.911837039400297 30 82.901436190700338 31 82.897921251700311 32 82.902471870400248
		 33 82.916058520300297 34 82.938583391900224 35 82.969948675500291 36 83.010056561600237 37 83.058809240900374 38 83.116108903600292 39 83.181857740300316 40 83.255957941400297 41 83.338311697500245
		 42 83.428821199000282 43 83.527388636300287 44 83.633916200000272 45 83.748306080500413 46 83.870460468300294 47 84.000281553800306 48 84.137671527600318 49 84.282532580000392 50 84.434766901700215
		 51 84.594276682900272 52 84.760964114300364 53 84.934731386300385 54 85.115480689300313 55 85.30311421390023 56 85.497534150500059 57 85.698642689500304 58 85.906342021500336 59 86.12053433700035
		 60 86.341121826300338 61 86.568006679900336 62 86.801091088400256 63 87.040277242300391 64 87.285467331900207 65 87.536563547700396 66 87.793468080300372 67 88.05608312000038 68 88.324310857500322
		 69 88.598053483000385 70 88.877213187200297 71 89.161692160500323 72 89.451392593300355 73 89.746216676100389 74 90.046066599500236 75 90.350844553800215 76 90.660452729600451 77 90.974793317200323
		 78 91.293768507300328 79 91.617280490200429 80 91.945231456500323 81 92.277523596500373 82 92.614059100800517 83 92.954740159900297 84 93.299468964200301 85 93.648147704200269 86 94.000678570300394
		 87 94.356963753100402 88 94.716905443000428 89 95.080405830400295 90 95.447367106000328 91 95.81769146000039 92 96.191281083000362 93 96.568038165500354 94 96.947864897900445 95 97.330663470800317
		 96 97.71633607450039 97 98.104784899600389 98 98.495912136500323 99 98.889619975700299 100 99.285810607700327 101 99.6843862229004 102 100.08524901200042 103 100.48830116500039
		 104 100.89344487300032 105 101.30058232600031 106 101.70961571400039 107 102.12044722900032 108 102.5329790600004 109 102.94711339800028 110 103.36275243400044 111 103.77979835700043
		 112 104.19815335900041 113 104.61771963000044 114 105.03839936000041 115 105.46009474100047 116 105.88270796100035 117 106.30614121200043 118 106.73029668500051 119 107.15507656900054
		 120 107.58038305600049;
createNode animCurveTL -n "camera_1_1_translateZ";
	rename -uid "BCEECEE9-433C-32B3-B5F2-BEAE18410A0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 -109.06349510899983 2 -104.96554033699982 3 -100.8668937069998 4 -96.767871245799853 5 -92.668788982399803
		 6 -88.569962945099832 7 -84.47170916209987 8 -80.374343661699896 9 -76.278182472399834 10 -72.183541622199897 11 -68.090737139699883 12 -64.000085053099838 13 -59.91190139069991 14 -55.826502180899894
		 15 -51.744203451899807 16 -47.665321232099842 17 -43.590171549699789 18 -39.519070433199801 19 -35.452333910699821 20 -31.390278010699774 21 -27.333218761399792 22 -23.281472191099795 23 -19.23535432829982
		 24 -15.195181201099871 25 -11.161268837899797 26 -7.1339332669599571 27 -3.113490516679803 28 0.89974338466120696 29 4.9054524087601408 30 8.9033205272901341 31 12.893031711900193 32 16.877767270200167
		 33 20.86092663400018 34 24.842520871400126 35 28.82256105030018 36 32.801058238800124 37 36.778023504800188 38 40.753467916400183 39 44.727402541500226 40 48.699838448200182 41 52.670786704400143
		 42 56.640258378100185 43 60.608264537300187 44 64.574816250100213 45 68.539924584500298 46 72.503600608300204 47 76.465855389700224 48 80.426699996600192 49 84.386145497000271 50 88.344202959000143
		 51 92.300883450400192 52 96.256198039400303 53 100.21015779400027 54 104.16277378200029 55 108.1140570710001 56 112.06401873000003 57 116.0126698270002 58 119.96002142900021 59 123.90608460400027
		 60 127.85087042100028 61 131.79438994800026 62 135.73665425200019 63 139.6776744010003 64 143.61746146400012 65 147.55602650900022 66 151.49338060300025 67 155.42953481400028 68 159.36450021100026
		 69 163.29828786100029 70 167.23090883300023 71 171.16237419400022 72 175.09269501300022 73 179.02188235700029 74 182.94994729500016 75 186.87690089400013 76 190.80275422300033 77 194.72751834900026
		 78 198.65120434000028 79 202.57382326500027 80 206.49538619200027 81 210.41590418700025 82 214.33538832100035 83 218.2538496590002 84 222.17129927200017 85 226.08774822500024 86 230.00320758800024
		 87 233.91768842900029 88 237.83120181500027 89 241.74375881400016 90 245.65537049500026 91 249.56604792500025 92 253.4758021730002 93 257.38464430600021 94 261.29258539200032 95 265.19963650000017
		 96 269.10580869700027 97 273.01111305200021 98 276.91556063200022 99 280.81916250600017 100 284.72192974000023 101 288.62387340500027 102 292.52500456600023 103 296.42533429300022
		 104 300.32487365400021 105 304.22363371600017 106 308.12162554700029 107 312.01886021600023 108 315.91534879000028 109 319.81110233700019 110 323.70613192600024 111 327.60044862400025
		 112 331.49406350000021 113 335.38698762100023 114 339.27923205500031 115 343.17080787100031 116 347.06172613600017 117 350.95199791800025 118 354.84163428600021 119 358.73064630700026
		 120 362.61904504900031;
createNode animCurveTA -n "camera_1_1_rotateX";
	rename -uid "D8267291-4D2A-88EC-99F7-2CA68B580F25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 -34.200000000000053 2 -34.164705882400085 3 -34.129411764700052 4 -34.094117647100028 5 -34.058823529400065
		 6 -34.023529411800048 7 -33.988235294100051 8 -33.952941176500062 9 -33.9176470588001 10 -33.882352941200054 11 -33.84705882350007 12 -33.811764705900046 13 -33.77647058820002 14 -33.741176470600038
		 15 -33.705882352900076 16 -33.670588235300045 17 -33.635294117600068 18 -33.600000000000051 19 -33.564705882400048 20 -33.529411764700065 21 -33.494117647100083 22 -33.45882352940005 23 -33.423529411800082
		 24 -33.38823529410007 25 -33.352941176500082 26 -33.317647058800034 27 -33.28235294120006 28 -33.247058823500069 29 -33.211764705900066 30 -33.176470588200068 31 -33.141176470600051 32 -33.105882352900011
		 33 -33.070588235300043 34 -33.035294117600046 35 -33.000000000000028 36 -32.964705882400011 37 -32.929411764700056 38 -32.89411764710006 39 -32.858823529400084 40 -32.823529411800052 41 -32.788235294100041
		 42 -32.752941176500087 43 -32.717647058800047 44 -32.68235294120003 45 -32.647058823500039 46 -32.61176470590005 47 -32.576470588200053 48 -32.541176470600028 49 -32.505882352900095 50 -32.470588235300028
		 51 -32.435294117600087 52 -32.400000000000041 53 -32.36470588240006 54 -32.329411764700019 55 -32.29411764710008 56 -32.258823529399997 57 -32.223529411800058 58 -32.188235294100039 59 -32.152941176500072
		 60 -32.117647058800031 61 -32.082352941200043 62 -32.047058823500052 63 -32.011764705900084 64 -31.976470588200073 65 -31.941176470600041 66 -31.905882352900054 67 -31.870588235300044 68 -31.835294117600071
		 69 -31.800000000000072 70 -31.764705882400026 71 -31.729411764700046 72 -31.694117647100047 73 -31.658823529400067 74 -31.623529411800057 75 -31.588235294100027 76 -31.552941176500052 77 -31.517647058800048
		 78 -31.482352941200041 79 -31.447058823500061 80 -31.411764705900051 81 -31.376470588200032 82 -31.341176470600082 83 -31.305882352900028 84 -31.270588235300099 85 -31.235294117600013 86 -31.200000000000038
		 87 -31.164705882400042 88 -31.129411764700059 89 -31.09411764710007 90 -31.058823529400016 91 -31.023529411800055 92 -30.988235294100033 93 -30.952941176500062 94 -30.917647058800053 95 -30.882352941200022
		 96 -30.847058823500056 97 -30.811764705900057 98 -30.776470588200038 99 -30.741176470600038 100 -30.705882352900034 101 -30.670588235300073 102 -30.635294117600068 103 -30.600000000000069
		 104 -30.564705882400037 105 -30.529411764700047 106 -30.494117647100058 107 -30.458823529400036 108 -30.423529411800036 109 -30.388235294100024 110 -30.35294117650005 111 -30.317647058800034
		 112 -30.282352941200077 113 -30.247058823500055 114 -30.211764705900034 115 -30.176470588200065 116 -30.141176470600062 117 -30.105882352900061 118 -30.070588235300026 119 -30.035294117600056
		 120 -30.00000000000005;
createNode animCurveTA -n "camera_1_1_rotateY";
	rename -uid "C3A4A481-4129-AD50-25D3-8699ACF8B082";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 -40.799999999999983 2 -40.070588235300043 3 -39.341176470600011 4 -38.611764705899994 5 -37.882352941199983
		 6 -37.152941176499986 7 -36.423529411799962 8 -35.694117647100022 9 -34.96470588239999 10 -34.235294117600013 11 -33.505882352900009 12 -32.776470588199984 13 -32.047058823499988 14 -31.317647058800016
		 15 -30.588235294099981 16 -29.858823529399995 17 -29.129411764699991 18 -28.399999999999984 19 -27.670588235299991 20 -26.941176470599974 21 -26.211764705900027 22 -25.482352941200034 23 -24.752941176500002
		 24 -24.023529411800023 25 -23.294117647099998 26 -22.564705882399995 27 -21.835294117600014 28 -21.105882352900011 29 -20.376470588200036 30 -19.647058823500032 31 -18.917647058800029 32 -18.188235294099957
		 33 -17.458823529399996 34 -16.729411764700025 35 -16.000000000000014 36 -15.270588235299975 37 -14.5411764706 38 -13.811764705900011 39 -13.082352941200021 40 -12.352941176500007 41 -11.623529411800002
		 42 -10.894117647099996 43 -10.164705882399998 44 -9.4352941176499812 45 -8.7058823529400122 46 -7.9764705882400042 47 -7.2470588235300006 48 -6.5176470588199971 49 -5.7882352941200077 50 -5.0588235294099952
		 51 -4.3294117647100094 52 -3.599999999999989 53 -2.8705882352900129 54 -2.1411764705899992 55 -1.4117647058800029 56 -0.68235294117699397 57 0.047058823529302997 58 0.77647058823499704 59 1.505882352939981
		 60 2.235294117649997 61 2.964705882350005 62 3.6941176470599935 63 4.4235294117600104 64 5.1529411764700086 65 5.8823529411799909 66 6.6117647058799953 67 7.3411764705899918 68 8.0705882352899945
		 69 8.7999999999999936 70 9.5294117647100141 71 10.258823529400017 72 10.988235294100013 73 11.717647058800011 74 12.447058823500001 75 13.176470588199978 76 13.905882352899978 77 14.635294117599999
		 78 15.364705882399987 79 16.09411764710002 80 16.823529411799999 81 17.552941176500003 82 18.282352941200028 83 19.011764705899996 84 19.741176470600013 85 20.470588235299978 86 21.200000000000006
		 87 21.929411764699999 88 22.65882352940001 89 23.38823529410001 90 24.117647058799989 91 24.847058823500021 92 25.576470588199989 93 26.305882352899985 94 27.035294117599999 95 27.764705882399973
		 96 28.494117647100019 97 29.223529411800016 98 29.952941176500012 99 30.682352941199991 100 31.41176470590003 101 32.141176470600016 102 32.870588235300005 103 33.6
		 104 34.329411764699998 105 35.058823529399994 106 35.788235294099991 107 36.517647058800002 108 37.247058823500012 109 37.976470588200002 110 38.705882352899984 111 39.435294117600009
		 112 40.164705882400014 113 40.894117647100025 114 41.623529411799993 115 42.352941176499989 116 43.0823529412 117 43.811764705900011 118 44.5411764706 119 45.270588235300039
		 120 46.00000000000005;
createNode animCurveTA -n "camera_1_1_rotateZ";
	rename -uid "B44088E0-4E50-9833-BE80-13B263F9BA25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 1e-14 2 1.7e-14 3 1.3e-14 4 -4.0000000000000003e-15 5 -1e-14
		 6 -8.0000000000000006e-15 7 -5.9999999999999997e-15 8 2.5000000000000001e-14 9 0 10 8.0000000000000006e-15 11 1e-14 12 -4.0000000000000003e-15 13 -8.0000000000000006e-15 14 5.9999999999999997e-15
		 15 -1.3e-14 16 -3.1e-14 17 -1.1e-14 18 -2.6999999999999995e-14 19 -8.0000000000000006e-15 20 -2.1000000000000002e-14 21 5.9999999999999997e-15 22 1.1999999999999999e-14 23 0
		 24 1e-14 25 -2.8000000000000004e-14 26 -1.1999999999999999e-14 27 1.0000000000000001e-15 28 7.0000000000000009e-15 29 2.2000000000000001e-14 30 1.7999999999999999e-14 31 1.1e-14 32 -3.5999999999999998e-14
		 33 1.0000000000000001e-15 34 1e-14 35 1.0000000000000001e-15 36 -1.7e-14 37 -5e-15 38 2.9999999999999998e-15 39 1.3e-14 40 2.0000000000000002e-15 41 8.9999999999999995e-15
		 42 -5.9999999999999997e-15 43 -8.0000000000000006e-15 44 -2e-14 45 8.9999999999999995e-15 46 0 47 -2.9999999999999998e-15 48 1.0000000000000001e-15 49 7.0000000000000009e-15 50 -4.0000000000000003e-15
		 51 4.0000000000000003e-15 52 -1.1999999999999999e-14 53 5.9999999999999997e-15 54 -2.0000000000000002e-15 55 -2.0000000000000002e-15 56 -1e-14 57 2.0000000000000002e-15 58 7.0000000000000009e-15 59 1.1e-14
		 60 2.0000000000000002e-15 61 -5e-15 62 5.9999999999999997e-15 63 -5e-15 64 -1.0000000000000001e-15 65 4.0000000000000003e-15 66 5.9999999999999997e-15 67 -1.0000000000000001e-15 68 1e-14
		 69 8.0000000000000006e-15 70 -8.9999999999999995e-15 71 2.9999999999999998e-15 72 -7.0000000000000009e-15 73 -7.0000000000000009e-15 74 8.0000000000000006e-15 75 1.4000000000000002e-14 76 8.9999999999999995e-15 77 2.9999999999999998e-15
		 78 1.3e-14 79 -1.3e-14 80 5e-15 81 1.3e-14 82 -5e-15 83 1.4999999999999999e-14 84 2.9999999999999998e-15 85 1.4999999999999999e-14 86 7.0000000000000009e-15
		 87 1.4999999999999999e-14 88 7.0000000000000009e-15 89 1.3e-14 90 1.9000000000000001e-14 91 4.0000000000000003e-15 92 5e-15 93 8.0000000000000006e-15 94 7.0000000000000009e-15 95 2.2000000000000001e-14
		 96 2.9999999999999998e-15 97 -4.0000000000000003e-15 98 1.1e-14 99 1.7e-14 100 -1.1e-14 101 -1.7999999999999999e-14 102 -7.0000000000000009e-15 103 7.0000000000000009e-15
		 104 0 105 -1.4999999999999999e-14 106 -2.0000000000000002e-15 107 2.0000000000000002e-15 108 0 109 0 110 5.9999999999999997e-15 111 -7.0000000000000009e-15 112 -1.1e-14
		 113 -1.3e-14 114 2.0000000000000002e-15 115 5.9999999999999997e-15 116 2.0000000000000002e-15 117 -1.1e-14 118 -4.0000000000000003e-15 119 -7.0000000000000009e-15 120 -1.1e-14;
createNode animCurveTU -n "camera_1_1Shape1_focalLength";
	rename -uid "C85CF061-4758-E849-6BC0-21A517ABECD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 35 2 35 3 35 4 35 5 35 6 35 7 35 8 35
		 9 35 10 35 11 35 12 35 13 35 14 35 15 35 16 35 17 35 18 35 19 35 20 35 21 35 22 35
		 23 35 24 35 25 35 26 35 27 35 28 35 29 35 30 35 31 35 32 35 33 35 34 35 35 35 36 35
		 37 35 38 35 39 35 40 35 41 35 42 35 43 35 44 35 45 35 46 35 47 35 48 35 49 35 50 35
		 51 35 52 35 53 35 54 35 55 35 56 35 57 35 58 35 59 35 60 35 61 35 62 35 63 35 64 35
		 65 35 66 35 67 35 68 35 69 35 70 35 71 35 72 35 73 35 74 35 75 35 76 35 77 35 78 35
		 79 35 80 35 81 35 82 35 83 35 84 35 85 35 86 35 87 35 88 35 89 35 90 35 91 35 92 35
		 93 35 94 35 95 35 96 35 97 35 98 35 99 35 100 35 101 35 102 35 103 35 104 35 105 35
		 106 35 107 35 108 35 109 35 110 35 111 35 112 35 113 35 114 35 115 35 116 35 117 35
		 118 35 119 35 120 35;
createNode animCurveTL -n "camera_1_2_translateX";
	rename -uid "4A673520-4837-9C16-1A5B-81B40912DCA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0
		 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0
		 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0
		 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0
		 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0
		 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0;
createNode animCurveTL -n "camera_1_2_translateY";
	rename -uid "7666D0B7-47C6-AF94-32BF-0091527768ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0
		 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0
		 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0
		 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0
		 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0
		 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0;
createNode animCurveTL -n "camera_1_2_translateZ";
	rename -uid "00B03B49-402C-2911-935D-95A10F63D7B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0
		 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0
		 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0
		 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0
		 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0
		 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0;
createNode animCurveTA -n "camera_1_2_rotateX";
	rename -uid "E257944F-4C3E-EFEA-147C-BF9B2E2A0967";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0
		 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0
		 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0
		 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0
		 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0
		 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0;
createNode animCurveTA -n "camera_1_2_rotateY";
	rename -uid "5164B11C-4863-E032-ACB3-F99353F6FFE5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0
		 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0
		 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0
		 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0
		 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0
		 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0;
createNode animCurveTA -n "camera_1_2_rotateZ";
	rename -uid "B0A6F6E2-4969-7E3E-62F1-EAB1509FF008";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0
		 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0
		 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0
		 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0
		 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0
		 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0;
createNode animCurveTU -n "camera_1_1Shape2_focalLength";
	rename -uid "2E5C3322-4962-FD91-CF60-B98D43F63360";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 35 2 35 3 35 4 35 5 35 6 35 7 35 8 35
		 9 35 10 35 11 35 12 35 13 35 14 35 15 35 16 35 17 35 18 35 19 35 20 35 21 35 22 35
		 23 35 24 35 25 35 26 35 27 35 28 35 29 35 30 35 31 35 32 35 33 35 34 35 35 35 36 35
		 37 35 38 35 39 35 40 35 41 35 42 35 43 35 44 35 45 35 46 35 47 35 48 35 49 35 50 35
		 51 35 52 35 53 35 54 35 55 35 56 35 57 35 58 35 59 35 60 35 61 35 62 35 63 35 64 35
		 65 35 66 35 67 35 68 35 69 35 70 35 71 35 72 35 73 35 74 35 75 35 76 35 77 35 78 35
		 79 35 80 35 81 35 82 35 83 35 84 35 85 35 86 35 87 35 88 35 89 35 90 35 91 35 92 35
		 93 35 94 35 95 35 96 35 97 35 98 35 99 35 100 35 101 35 102 35 103 35 104 35 105 35
		 106 35 107 35 108 35 109 35 110 35 111 35 112 35 113 35 114 35 115 35 116 35 117 35
		 118 35 119 35 120 35;
createNode animCurveTL -n "objectPGroup_pgroup_3_1_1_translateX";
	rename -uid "DCCDC667-4F54-BF2C-1C71-9C991F21EFC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 -4.6750710243464653 2 -4.6374797475389542 3 -4.6116496829338436 4 -4.597189828905087 5 -4.5936828542059729
		 6 -4.6007025672448796 7 -4.6178257358234518 8 -4.644636088896462 9 -4.680725254570703 10 -4.7256930860181967 11 -4.7791478798775202 12 -4.8407064680583431 13 -4.9099942043687577 14 -4.9866453276354292
		 15 -5.0703114949459902 16 -5.1606415214388761 17 -5.2572982066986071 18 -5.3599561477742697 19 -5.4682995394242164 20 -5.5820225845327798 21 -5.7008298148826881 22 -5.8244362778271039 23 -5.9525676706216046
		 24 -6.0849604579285099 25 -6.2213619777009512 26 -6.3615305645868432 27 -6.5052357256695146 28 -6.6522580317894864 29 -6.8023898845603057 30 -6.9554405004555591 31 -7.1112446641571836 32 -7.2691313079300626
		 33 -7.4281970318633634 34 -7.5879543453751168 35 -7.7479079446936936 36 -7.9075534503413678 37 -8.0663797809486759 38 -8.2238706088298272 39 -8.3795047308197574 40 -8.5327560793525272 41 -8.6830964610076862
		 42 -8.829995510779673 43 -8.9729117891633834 44 -9.1113049421973287 45 -9.2446312309841066 46 -9.3723436193357461 47 -9.4938921300897512 48 -9.6087241723410237 49 -9.7162848160244462 50 -9.8160170466814609
		 51 -9.9073619774829584 52 -9.989758917435493 53 -10.062645321353891 54 -10.125458665470031 55 -10.177644842717221 56 -10.218629384653514 57 -10.247849998984234 58 -10.264744024927861 59 -10.26874860169319
		 60 -10.259301320378336 61 -10.235840706611523 62 -10.197806539142894 63 -10.144640116242913 64 -10.075784475601141 65 -9.9906844636048131 66 -9.8887866027768645 67 -9.76953935247845 68 -9.6324064612396256
		 69 -9.4768343020360568 70 -9.3022819851582241 71 -9.1082133229222322 72 -8.8940953430069847 73 -8.6593988716129644 74 -8.4035990284885074 75 -8.1261755659054096 76 -7.8266131459273183 77 -7.5044015911448056
		 78 -7.159036040460748 79 -6.7900169944068907 80 -6.3968506185717118 81 -5.9790564266096098 82 -5.5361505526096266 83 -5.0676575107558861 84 -4.5731122021764179 85 -4.0520563251615727 86 -3.5040388748250848
		 87 -2.9286166287494031 88 -2.3253544793637029 89 -1.6938256927790081 90 -1.033612146590194 91 -0.34430454186342302 92 0.37449741197192299 93 1.1231847464073039 94 1.902137655461672 95 2.7117276696482828
		 96 3.5523174615868949 97 4.4242579112087412 98 5.3278896347772076 99 6.2635426667594629 100 7.2315361537298912 101 8.2321781107030176 102 9.2657651921396678 103 10.332582478471181
		 104 11.432903258994841 105 12.566988805404918 106 13.735088137861638 107 14.937438050263339 108 16.174263180302844 109 17.445774107599476 110 18.752169267720561 111 20.093633946531341
		 112 21.47034007732158 113 22.882446088874801 114 24.330096774739459 115 25.81342313631103 116 27.33254225133193 117 28.887557317585305 118 30.478558585255854 119 32.10562675031106
		 120 33.768838651244891;
createNode animCurveTL -n "objectPGroup_pgroup_3_1_1_translateY";
	rename -uid "60FA1659-4730-699B-5E36-859F7DF977BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 -5.1488666822952851 2 -5.2537089181946186 3 -5.3513059880658096 4 -5.4418188340868099 5 -5.5254189545633574
		 6 -5.6022876922007754 7 -5.6726142065488574 8 -5.7365944228067747 9 -5.7944306351499222 10 -5.8463312674931336 11 -5.8925106768254523 12 -5.9331890363224886 13 -5.9685923479109766 14 -5.9989522698214799
		 15 -6.0244988640782111 16 -6.0454763951278707 17 -6.0621310190898399 18 -6.0747115159202707 19 -6.083471081739134 20 -6.0886669748493603 21 -6.0905601487105301 22 -6.0894149756814926 23 -6.0854990076162494
		 24 -6.0790827598365951 25 -6.0704395361010413 26 -6.0598453146209508 27 -6.047578546276867 28 -6.033916808143104 29 -6.0191474714978446 30 -6.0035722371250912 31 -5.9875147282666319 32 -5.9699102846146488
		 33 -5.9494124317718828 34 -5.9259292679693232 35 -5.8993525349910882 36 -5.8695682932297331 37 -5.8364652174956007 38 -5.7999374649459341 39 -5.7598851357164449 40 -5.7162142465171746 41 -5.6688387439213557
		 42 -5.6176797071810469 43 -5.56265932343522 44 -5.5037096629722271 45 -5.4407690109924971 46 -5.3737818584786652 47 -5.3026990353923944 48 -5.227477791378206 49 -5.1480818276845071 50 -5.0644813150017276
		 51 -4.9766528917208177 52 -4.8845796157505674 53 -4.7882509058502762 54 -4.6876630499283749 55 -4.5828211454757337 56 -4.4737313626966966 57 -4.3604098874623114 58 -4.242879145280412 59 -4.1211678196416273
		 60 -3.9953109485706051 61 -3.865349950729652 62 -3.731332604776227 63 -3.5933130103459661 64 -3.451351547675344 65 -3.3055148292023802 66 -3.1558756576810079 67 -3.0025130359101131 68 -2.8455123495873811
		 69 -2.6849643619999739 70 -2.5209663158102562 71 -2.353621376198916 72 -2.1830385794080911 73 -2.009332813938542 74 -1.832624765146704 75 -1.6530408617118011 76 -1.470713206832073 77 -1.2857795238408301
		 78 -1.098383110485017 79 -0.90867283901322105 80 -0.71680312759164599 81 -0.522931890750158 82 -0.32722457115501402 83 -0.12985169407929201 84 0.069012080317647995 85 0.26918701889181301 86 0.47048843464416701
		 87 0.67272683602084304 88 0.87570805103587201 89 1.0792333357696859 90 1.2830994707991861 91 1.4870988424025171 92 1.691019477552373 93 1.8946451042213399 94 2.0977568026764288 95 2.3001309247096491
		 96 2.5015381780621619 97 2.7017473885192089 98 2.9005236478687948 99 3.0976284481007572 100 3.2928198720580468 101 3.4858527567881481 102 3.676478817387796 103 3.864446778095044
		 104 4.0495024858425239 105 4.2313890137055168 106 4.4098467679462914 107 4.58461408647117 108 4.7554275171954217 109 4.9220192504524434 110 5.0841210355387636 111 5.241462607920738
		 112 5.3937718430276496 113 5.5407749603186147 114 5.6821966997252886 115 5.817760469155715 116 5.9471885113289247 117 6.0702021636747929 118 6.1865226796720023 119 6.2958733259892767
		 120 6.3979821907058394;
createNode animCurveTL -n "objectPGroup_pgroup_3_1_1_translateZ";
	rename -uid "650F0B37-4A58-3346-631F-269B9AD08530";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 -143.8637915059806 2 -143.62907085719468 3 -143.40766857409875 4 -143.19868960137791 5 -143.00187518203575
		 6 -142.81727593284654 7 -142.64502404045462 8 -142.4852578879819 9 -142.33810831545043 10 -142.20369741579344 11 -142.08213960515948 12 -141.97354615782996 13 -141.87803400150705 14 -141.79572591333419
		 15 -141.72648101474098 16 -141.6705257961774 17 -141.62796601598154 18 -141.59883691296014 19 -141.5831807143025 20 -141.58104115340478 21 -141.59245850328369 22 -141.61746819695247 23 -141.65610097565298
		 24 -141.70838368624453 25 -141.77434150463904 26 -141.85400189944903 27 -141.9473958300614 28 -142.05446096714871 29 -142.17538231321856 30 -142.31073391683415 31 -142.46171577178842 32 -142.63023510252839
		 33 -142.81823291690711 34 -143.02698645768174 35 -143.25707037317869 36 -143.50868895070411 37 -143.78192996496975 38 -144.07685121677818 39 -144.39349317026119 40 -144.73187638224047 41 -145.09206507751338
		 42 -145.47414370960851 43 -145.87801567809254 44 -146.30368860120385 45 -146.75115503607785 46 -147.22039094363609 47 -147.71135902984565 48 -148.22401063689355 49 -148.75828623501619 50 -149.31411544387464
		 51 -149.89141634137079 52 -150.49009276432318 53 -151.11003032162154 54 -151.75111928396436 55 -152.41336140924423 56 -153.09647622583788 57 -153.8003437722335 58 -154.52482556180436 59 -155.26976417418439
		 60 -156.03498864915798 61 -156.82031723623348 62 -157.62555794338365 63 -158.45050844259822 64 -159.294955445548 65 -160.15867231010503 66 -161.04141435463399 67 -161.94291873524412 68 -162.86305811918709
		 69 -163.80145392295822 70 -164.75782685756622 71 -165.73189940557981 72 -166.72337527523823 73 -167.73194308125264 74 -168.75727902785934 75 -169.79904772356974 76 -170.85690232284671 77 -171.93048427140195
		 78 -173.01942181394588 79 -174.12332677048062 80 -175.24179433020421 81 -176.37450720262683 82 -177.52100250171327 83 -178.68082400050042 84 -179.85355187364149 85 -181.03874879789731 86 -182.23596287735251
		 87 -183.44473091779059 88 -184.66457971997878 89 -185.89502639594065 90 -187.135578338014 91 -188.38573258392651 92 -189.64497417550044 93 -190.91277532849153 94 -192.18863607193796 95 -193.472023210103
		 96 -194.76234961295967 97 -196.05906669894864 98 -197.36161263731796 99 -198.66941341313924 100 -199.98188504596158 101 -201.29843464146825 102 -202.61846073189778 103 -203.94135342947678
		 104 -205.26649442092778 105 -206.59325663722609 106 -207.92100402794009 107 -209.24910056513238 108 -210.57691229565225 109 -211.9037583742325 110 -213.22898111038009 111 -214.55191404376262
		 112 -215.87188256071747 113 -217.18820528846186 114 -218.50019485723735 115 -219.80715825148519 116 -221.10839725604265 117 -222.4032106727073 118 -223.69090508893595 119 -224.9708256128838
		 120 -226.24239630499937;
createNode animCurveTA -n "objectPGroup_pgroup_3_1_1_rotateX";
	rename -uid "7F9C55AB-4EB8-65C6-B969-92874096E5A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 25.18195739697677 2 25.451417859566021 3 25.71650215761548 4 25.977157746153608 5 26.233328837645665
		 6 26.484958081044766 7 26.731987942807464 8 26.97436123024265 9 27.212021230862543 10 27.444911771344273 11 27.672977259238639 12 27.896162696554843 13 28.114413649624225 14 28.327676288188751
		 15 28.535899917976536 16 28.739031342638139 17 28.937019240993472 18 29.129813851360787 19 29.317366314603262 20 29.499628775573129 21 29.676554486816258 22 29.84809787969667 23 30.014214622243749
		 24 30.174861668569644 25 30.329997293171125 26 30.479581102366232 27 30.623574075364868 28 30.761939726246002 29 30.894640271039378 30 31.021634890001224 31 31.142876828066573 32 31.258356668072032
		 33 31.368067769407702 34 31.471969142985355 35 31.570029650595579 36 31.662224298299911 37 31.74853130590521 38 31.828931116994937 39 31.903406280789348 40 31.97194151344317 41 32.034522958830777
		 42 32.091138505053976 43 32.141780213682132 44 32.186440911664043 45 32.225115641971271 46 32.257801693293942 47 32.284498566785736 48 32.305207958972851 49 32.319933756750338 50 32.328682036160309
		 51 32.3314610642161 52 32.328281320260579 53 32.31915552366673 54 32.304098372388331 55 32.283125434760528 56 32.256257237812157 57 32.223514584209525 58 32.184920432623173 59 32.140499867173176
		 60 32.090280007120036 61 32.034289945810876 62 31.972560708580726 63 31.905125216199163 64 31.832018248858731 65 31.75327642349999 66 31.668938183101361 67 31.579043743621924 68 31.483633858146522
		 69 31.382752807229476 70 31.276445550711085 71 31.16475847826521 72 31.047739508966334 73 30.925438002718064 74 30.797904683509561 75 30.665191575392601 76 30.527351944700921 77 30.384440242778773
		 78 30.236512056793774 79 30.083624066752364 80 29.925833984691963 81 29.763199964795753 82 29.595781773335744 83 29.423639894049966 84 29.246835354958193 85 29.065429948508399 86 28.879486159617237
		 87 28.689067094921139 88 28.494236424876068 89 28.295058331762299 90 28.091597459378576 91 27.883918867265656 92 27.672087987541286 93 27.456170580554957 94 27.236232562350619 95 27.012340165321483
		 96 26.784559938879216 97 26.552958431930794 98 26.317602316320471 99 26.078558344590046 100 25.83589330601594 101 25.589673989662639 102 25.339967149794386 103 25.086839474686574
		 104 24.830357556080198 105 24.570587861520785 106 24.307596707787841 107 24.04145021849218 108 23.772214300195603 109 23.499954702345679 110 23.224736873295253 111 22.9466259984628
		 112 22.665686980887006 113 22.381984421286582 114 22.095582601558764 115 21.806545469463991 116 21.514936625419033 117 21.220819307456569 118 20.924256369694579 119 20.625310242964847
		 120 20.324042895981385;
createNode animCurveTA -n "objectPGroup_pgroup_3_1_1_rotateY";
	rename -uid "8FE4707E-4988-F67D-9790-049058C2BFAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 46.223393339522381 2 45.472991255784287 3 44.718983483108083 4 43.961390212521408 5 43.200226346690421
		 6 42.435505583171867 7 41.667243325959845 8 40.89545768920788 9 40.120169719764448 10 39.341403458187663 11 38.559185967620067 12 37.773547316094408 13 36.984520506028971 14 36.192141510962564
		 15 35.396452542642855 16 34.59749441581581 17 33.795312535203806 18 32.989956248442923 19 32.181477917626928 20 31.369932988124486 21 30.555380040878834 22 29.737880794085275 23 28.917500080906773
		 24 28.094305813360489 25 27.268368926692272 26 26.439763303227572 27 25.608565722103265 28 24.77485668055186 29 23.938717251786446 30 23.10022824550013 31 22.259468926752323 32 21.416545916146916
		 33 20.571566018996947 34 19.724614688235992 35 18.875785854526089 36 18.025178551185583 37 17.172894672237419 38 16.319038179031619 39 15.463714863718286 40 14.607032206330688 41 13.749098941796554
		 42 12.890025103801758 43 12.029922622924964 44 11.168903966284862 45 10.30708251714568 46 9.444572405997075 47 8.5814883272184748 48 7.7179453643552298 49 6.8540588202985475 50 5.9899440487719291
		 51 5.1257162864484336 52 4.2614904848172692 53 3.3973811381628241 54 2.5335021172009959 55 1.669966605961513 56 0.80688672810086803 57 -0.055626438397734998 58 -0.91746304499999798 59 -1.7785146350695471
		 60 -2.638674289501719 61 -3.497836764692797 62 -4.3558986268348301 63 -5.2127583817034688 64 -6.0683166005345486 65 -6.9224760458805452 66 -7.7751418009573339 67 -8.6262213811421411 68 -9.4756242981156689
		 69 -10.323263460772116 70 -11.169054102358224 71 -12.012914162966894 72 -12.854764435823165 73 -13.694528620727652 74 -14.532133371842631 75 -15.367508344125739 76 -16.200586235363879 77 -17.031302822508216
		 78 -17.859596996959297 79 -18.685410800113321 80 -19.508689440690226 81 -20.329380840025834 82 -21.147436666394132 83 -21.962811661811934 84 -22.775463497028586 85 -23.585352996280854 86 -24.392444105101987
		 87 -25.19670385093475 88 -25.998102308076298 89 -26.796612562648676 90 -27.592210674766406 91 -28.384875639824934 92 -29.17458935002556 93 -29.96133654914993 94 -30.74510460929238 95 -31.525883738995397
		 96 -32.303667006233937 97 -33.078449893860899 98 -33.850230457369321 99 -34.619009257626772 100 -35.384789287282992 101 -36.147575901556586 102 -36.907376750530624 103 -37.664201711943313
		 104 -38.418062823567112 105 -39.168974216618125 106 -39.916952048469149 107 -40.662014402551797 108 -41.404181215890432 109 -42.143474380224063 110 -42.879917430125211 111 -43.613535589619083
		 112 -44.344355704184174 113 -45.072406170252378 114 -45.797716869507134 115 -46.520319104135396 116 -47.2402455338826 117 -47.957530108595392 118 -48.672207978441882 119 -49.384315351808105
		 120 -50.09388933763983;
createNode animCurveTA -n "objectPGroup_pgroup_3_1_1_rotateZ";
	rename -uid "3779C689-41A4-59B2-6A1A-5F8D02FC7972";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 120 ".ktv[0:119]"  1 23.944292871903365 2 23.600512157719706 3 23.252354546835761 4 22.899863509534445 5 22.543080469480902
		 6 22.182047111971148 7 21.816807072856143 8 21.447406544896403 9 21.073894432276422 10 20.696322410748252 11 20.314744966272766 12 19.929219404735676 13 19.539805826189617 14 19.146567162121503
		 15 18.749571184144862 16 18.348885868327081 17 17.944583039235109 18 17.536737994294292 19 17.125428941878525 20 16.710737045697037 21 16.292746457440867 22 15.871544315687641 23 15.447220728124261
		 24 15.01986874190678 25 14.589584299748115 26 14.156466179718377 27 13.720615949151014 28 13.282138465739267 29 12.84113987489744 30 12.397727046592976 31 11.952006731742065 32 11.504103858710302
		 33 11.05414431676893 34 10.602241229236887 35 10.148513828080537 36 9.6930852855651075 37 9.2360812542278143 38 8.7776293216378765 39 8.3178588159085347 40 7.8569006688345597 41 7.3948870938725033
		 42 6.9319515651823878 43 6.4682291407003412 44 6.0038555517245191 45 5.5389673879612129 46 5.0737019353601616 47 4.6081970038581792 48 4.142590760197943 49 3.6770215631762162 50 3.211627799628483
		 51 2.74654772051991 52 2.2819192770224279 53 1.817879954191415 54 1.3545666107953751 55 0.89211539148311503 56 0.43066140635595102 57 -0.029661281351178001 58 -0.48871983724401102 59 -0.94638280999463709
		 60 -1.40252027289715 61 -1.85700395909056 62 -2.3097073927370948 63 -2.76050601550005 64 -3.2092773083823949 65 -3.6559009114913712 66 -4.1002587435010014 67 -4.5422351072226688 68 -4.9817164463530226
		 69 -5.418592265681732 70 -5.8527544750130627 71 -6.2840976590487827 72 -6.7125191924025991 73 -7.1379192930659894 74 -7.5602010700730826 75 -7.9792705674621693 76 -8.3950368031565237 77 -8.8074118013371958
		 78 -9.2163106217728039 79 -9.6216513861877591 80 -10.023355291137305 81 -10.421346338370059 82 -10.815551949163311 83 -11.205902555476456 84 -11.592331509843579 85 -11.974775209412247 86 -12.353173065589706
		 87 -12.727467467233145 88 -13.097603744911352 89 -13.463530133419425 90 -13.825197730588787 91 -14.182560454473533 92 -14.535574998432987 93 -14.884200781506594 94 -15.22839979937924 95 -15.568136712926119
		 96 -15.903378829239273 97 -16.234095830079362 98 -16.560259827835754 99 -16.881845297640076 100 -17.198829004878089 101 -17.511189935408204 102 -17.818909225429657 103 -18.121970092090329
		 104 -18.420357762889498 105 -18.714059405956771 106 -19.00306405991077 107 -19.287362546979868 108 -19.56694740142763 109 -19.841812881572586 110 -20.111954780101751 111 -20.377370410932805
		 112 -20.638058540378218 113 -20.894019316759397 114 -21.145254203813014 115 -21.391765914266124 116 -21.633558345884431 117 -21.870636515207412 118 -22.103006483367064 119 -22.33067525960444
		 120 -22.553650702423347;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "970AC2F6-4BD4-608F-2737-D586158C974D";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"camera_1_1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 738\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 738\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"camera_1_1\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 50 100 -ps 2 50 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 656\\n    -height 738\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 656\\n    -height 738\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"camera_1_1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 656\\n    -height 738\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"camera_1_1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 656\\n    -height 738\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "B0EB964D-4786-31C1-65BD-258BAA239D99";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode expression -n "expression1";
	rename -uid "724E1940-0000-1343-5DD9-2EBD000004D1";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]=frame";
createNode expression -n "expression2";
	rename -uid "724E1940-0000-1343-5DD9-2EC5000004D2";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]=frame";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".msaa" yes;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "camera_1_1_translateX.o" "camera_1_1.tx";
connectAttr "camera_1_1_translateY.o" "camera_1_1.ty";
connectAttr "camera_1_1_translateZ.o" "camera_1_1.tz";
connectAttr "camera_1_1_rotateX.o" "camera_1_1.rx";
connectAttr "camera_1_1_rotateY.o" "camera_1_1.ry";
connectAttr "camera_1_1_rotateZ.o" "camera_1_1.rz";
connectAttr "imagePlaneShape1.msg" "camera_1_1Shape1.ip" -na;
connectAttr "camera_1_1Shape1_focalLength.o" "camera_1_1Shape1.fl";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr "expression1.out[0]" "imagePlaneShape1.fe";
connectAttr "Scene_parentConstraint1.ctx" "Scene.tx";
connectAttr "Scene_parentConstraint1.cty" "Scene.ty";
connectAttr "Scene_parentConstraint1.ctz" "Scene.tz";
connectAttr "Scene_parentConstraint1.crx" "Scene.rx";
connectAttr "Scene_parentConstraint1.cry" "Scene.ry";
connectAttr "Scene_parentConstraint1.crz" "Scene.rz";
connectAttr "camera_1_2_translateX.o" "camera_1_2.tx";
connectAttr "camera_1_2_translateY.o" "camera_1_2.ty";
connectAttr "camera_1_2_translateZ.o" "camera_1_2.tz";
connectAttr "camera_1_2_rotateX.o" "camera_1_2.rx";
connectAttr "camera_1_2_rotateY.o" "camera_1_2.ry";
connectAttr "camera_1_2_rotateZ.o" "camera_1_2.rz";
connectAttr "imagePlaneShape2.msg" "camera_1_1Shape2.ip" -na;
connectAttr "camera_1_1Shape2_focalLength.o" "camera_1_1Shape2.fl";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape2.ws";
connectAttr "expression2.out[0]" "imagePlaneShape2.fe";
connectAttr "objectPGroup_pgroup_3_1_1_translateX.o" "objectPGroup_pgroup_3_1_1.tx"
		;
connectAttr "objectPGroup_pgroup_3_1_1_translateY.o" "objectPGroup_pgroup_3_1_1.ty"
		;
connectAttr "objectPGroup_pgroup_3_1_1_translateZ.o" "objectPGroup_pgroup_3_1_1.tz"
		;
connectAttr "objectPGroup_pgroup_3_1_1_rotateX.o" "objectPGroup_pgroup_3_1_1.rx"
		;
connectAttr "objectPGroup_pgroup_3_1_1_rotateY.o" "objectPGroup_pgroup_3_1_1.ry"
		;
connectAttr "objectPGroup_pgroup_3_1_1_rotateZ.o" "objectPGroup_pgroup_3_1_1.rz"
		;
connectAttr "Scene.ro" "Scene_parentConstraint1.cro";
connectAttr "Scene.pim" "Scene_parentConstraint1.cpim";
connectAttr "Scene.rp" "Scene_parentConstraint1.crp";
connectAttr "Scene.rpt" "Scene_parentConstraint1.crt";
connectAttr "camera_1_1.t" "Scene_parentConstraint1.tg[0].tt";
connectAttr "camera_1_1.rp" "Scene_parentConstraint1.tg[0].trp";
connectAttr "camera_1_1.rpt" "Scene_parentConstraint1.tg[0].trt";
connectAttr "camera_1_1.r" "Scene_parentConstraint1.tg[0].tr";
connectAttr "camera_1_1.ro" "Scene_parentConstraint1.tg[0].tro";
connectAttr "camera_1_1.s" "Scene_parentConstraint1.tg[0].ts";
connectAttr "camera_1_1.pm" "Scene_parentConstraint1.tg[0].tpm";
connectAttr "Scene_parentConstraint1.w0" "Scene_parentConstraint1.tg[0].tw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":time1.o" "expression1.tim";
connectAttr ":time1.o" "expression2.tim";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of object_tracking_indepth.ma
