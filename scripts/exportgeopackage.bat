IF EXIST C:\OSGeo4W64\bin SET PATH=%PATH%;C:\OSGeo4W64\bin

ogr2ogr -f GPKG  TCStransport.gpkg -nlt point  PG:"host=host user=user dbname=dbname password=pass" -nln "addresspoints" -sql "select id, oirid, geom, r_segid, a_segid, seg_side, gislink, cast(structype as SMALLINT), strucdesc, stnum_h, stnum_l, stnum, stnumsuf, building, floor, unit_type, unit_num, secuntnum, predir, pretype, name, type, sufdir, postmod, address, addr_esn, label, subname, vanity, zip, zip4, esn, city, county, state, cast(source as SMALLINT), lon, lat, x_sp, y_sp, z_val, gpsdate, addrauth, editor, geomod, geosrce, geodate, attmod, attsrce, attdate, cast(status as SMALLINT), delnotes, right_left, comment, readdress, old_address, color, point_type, street, cad_name, loc_note, cad_post from addresspoints"

ogr2ogr -f GPKG -append TCStransport.gpkg -nlt linestring PG:"host=host user=user dbname=dbname password=pass" -nln "centerline" -sql "select id, geom, oirid, segid, l_f_add, l_t_add, r_f_add, r_t_add, addr_type, predir, pretype, name, type, sufdir, postmod, label, vanity, subname, cast(nametype as SMALLINT), cfcc, esn_l, esn_r, zip_l, zip_r, city_l, city_r, county_l, county_r, state_l, state_r, spdlimit, oneway, lanes, t_elev, f_elev, tfcost, ftcost, editor, geomod, geosrce, geodate, attmod, attsrce, attdate, cast(status as SMALLINT), surface, cross_street, connect, street, comment1, comment2, fna, tna, road_type, edituser, from centerline"

ogr2ogr -f GPKG -append TCStransport.gpkg -nlt POLYGON PG:"host=host user=user dbname=dbname password=pass"  "esn_boundary" -nln "esn_boundary"
