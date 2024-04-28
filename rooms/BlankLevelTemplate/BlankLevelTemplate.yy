{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "BlankLevelTemplate",
  "creationCodeFile": "",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_6BDEA8EF_1","path":"rooms/BlankLevelTemplate/BlankLevelTemplate.yy",},
    {"name":"inst_5FAB6C95","path":"rooms/BlankLevelTemplate/BlankLevelTemplate.yy",},
    {"name":"inst_273029B8","path":"rooms/BlankLevelTemplate/BlankLevelTemplate.yy",},
    {"name":"inst_50894406","path":"rooms/BlankLevelTemplate/BlankLevelTemplate.yy",},
    {"name":"inst_6D148F87","path":"rooms/BlankLevelTemplate/BlankLevelTemplate.yy",},
    {"name":"inst_594D85F3","path":"rooms/BlankLevelTemplate/BlankLevelTemplate.yy",},
    {"name":"inst_5853BF76","path":"rooms/BlankLevelTemplate/BlankLevelTemplate.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":0,"effectEnabled":true,"effectType":null,"gridX":64,"gridY":64,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6BDEA8EF_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ObjPlayer","path":"objects/ObjPlayer/ObjPlayer.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":128.0,"y":128.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_594D85F3","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ObjFlagDisplay","path":"objects/ObjFlagDisplay/ObjFlagDisplay.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":0.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5853BF76","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ObjMoveDisplay","path":"objects/ObjMoveDisplay/ObjMoveDisplay.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":0.0,"y":0.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"FlagTiles","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":20,"SerialiseWidth":20,"TileCompressedData":[
-156,-2147483648,1,0,-243,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"TsIce","path":"tilesets/TsIce/TsIce.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"SnowTiles","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":20,"SerialiseWidth":20,"TileCompressedData":[
-21,55,-2,0,-16,-2147483648,-2,55,-2,0,-16,-2147483648,-2,55,-18,-2147483648,-2,55,-18,-2147483648,
-2,55,-18,-2147483648,-2,55,-18,-2147483648,-2,55,2,-2147483648,0,-4,-2147483648,1,0,-3,-2147483648,1,
0,-4,-2147483648,5,0,-2147483648,-2147483648,55,55,-18,-2147483648,-2,55,-18,-2147483648,-2,55,-18,-2147483648,-2,
55,-18,-2147483648,-2,55,-18,-2147483648,-2,55,-18,-2147483648,-2,55,-18,-2147483648,-2,55,-18,-2147483648,-2,
55,-18,-2147483648,-2,55,-18,-2147483648,-2,55,-18,-2147483648,-21,55,],"TileDataFormat":1,},"tilesetId":{"name":"TsIce","path":"tilesets/TsIce/TsIce.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"IceTiles","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":20,"SerialiseWidth":20,"TileCompressedData":[
-21,0,1,34,-16,20,4,36,0,0,16,-16,47,4,24,0,0,16,-16,47,
4,24,0,0,16,-16,47,4,24,0,0,16,-16,47,4,24,0,0,16,-16,
47,4,24,0,0,16,-16,47,4,24,0,0,16,-16,47,4,24,0,0,16,
-16,47,4,24,0,0,16,-16,47,4,24,0,0,16,-16,47,4,24,0,0,
16,-16,47,4,24,0,0,16,-16,47,4,24,0,0,16,-16,47,4,24,0,
0,16,-16,47,4,24,0,0,16,-16,47,4,24,0,0,16,-16,47,4,24,
0,0,40,-16,28,1,38,-21,0,],"TileDataFormat":1,},"tilesetId":{"name":"TsIce","path":"tilesets/TsIce/TsIce.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"WallInstances","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5FAB6C95","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ObjWall","path":"objects/ObjWall/ObjWall.yy",},"properties":[],"rotation":0.0,"scaleX":18.0,"scaleY":1.0,"x":64.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_273029B8","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ObjWall","path":"objects/ObjWall/ObjWall.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":20.0,"x":1216.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_50894406","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ObjWall","path":"objects/ObjWall/ObjWall.yy",},"properties":[],"rotation":0.0,"scaleX":18.0,"scaleY":1.0,"x":64.0,"y":1216.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6D148F87","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ObjWall","path":"objects/ObjWall/ObjWall.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":20.0,"x":0.0,"y":0.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4294898394,"depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 1280,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 1280,
  },
  "sequenceId": null,
  "views": [
    {"hborder":288,"hport":960,"hspeed":-1,"hview":960,"inherit":false,"objectId":{"name":"ObjPlayer","path":"objects/ObjPlayer/ObjPlayer.yy",},"vborder":288,"visible":true,"vspeed":-1,"wport":540,"wview":540,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": true,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}