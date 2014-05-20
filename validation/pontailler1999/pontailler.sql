-- Reload the JS files
select plv8_startup();

-- Why BLcond 0.04 and not 0.05?
--('hart12coppice',1.5, 0.5, 0.08, (0,20,50)::fT_t, 0.04, (1,0,47.5,3.5)::tdp_t, .26, (19,10.8,5,2)::tdp_t, (0.0001,0.02, 2.6)::cond_t, (0,0.24,7.3)::intcpt_t, (0.17,0.7,0.5,0.02)::pR_t, 0.47, (2.8, 0.18, 2.4, 2, -0.772, 1.3)::pfs_t, (0.1,1,0.75)::rootP_t, (0.0015,0.03,2,2.5)::tdp_t, 0.5);

delete from m3pgjs.tree where type like 'pont-%';

INSERT INTO m3pgjs.tree (type,"fullCanAge", "kG", "alpha", "fT", "BLcond", "fAge", "fN0", "SLA","Conductance", "Intcptn", "pR", "y", "pfs", "rootP","litterfall", "k") VALUES 
('pont-hart12coppice-stick',1.5, 0.5, 0.08, (0,20,50)::fT_t, 0.04, (1,0,47.5,3.5)::tdp_t, .26, (19,10.8,5,2)::tdp_t, (0.0001,0.02, 2.6)::cond_t, (0,0.24,7.3)::intcpt_t, (0.17,0.7,0.5,0.02)::pR_t, 0.47, (1,0.081,2.46,2,-0.77,1.2)::pfs_t, (0.01,1,0.6)::rootP_t, (0.0015,0.03,2,2.5)::tdp_t, 0.5),
('pont-hart12coppice',1.5, 0.5, 0.08, (0,20,50)::fT_t, 0.04, (1,0,47.5,3.5)::tdp_t, .26, (19,10.8,5,2)::tdp_t, (0.0001,0.02, 2.6)::cond_t, (0,0.24,7.3)::intcpt_t, (0.17,0.7,0.5,0.02)::pR_t, 0.47, (1, 0.081, 2.46, 2, -0.77, 1.2)::pfs_t, (0.1,1,0.75)::rootP_t, (0.0015,0.03,2,2.5)::tdp_t, 0.5),
('pont-hart12coppice-orig',1.5, 0.5, 0.08, (0,20,50)::fT_t, 0.04, (1,0,47.5,3.5)::tdp_t, .26, (19,10.8,5,2)::tdp_t, (0.0001,0.02, 2.6)::cond_t, (0,0.24,7.3)::intcpt_t, (0.17,0.7,0.5,0.02)::pR_t, 0.47, (1.0, 0.18, 2.46, 2, -1.161, 1.9)::pfs_t, (0.1,1,0.75)::rootP_t, (0.0015,0.03,2,2.5)::tdp_t, 0.5);

INSERT INTO m3pgjs.tree (type,"fullCanAge", "kG", "alpha", "fT", "BLcond", "fAge", "fN0", "SLA","Conductance", "Intcptn", "pR", "y", "rootP","litterfall", "k","wsVI","laVI") VALUES('pont-beaupre-stick',0.8,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(166,0.854,1)::wsVI_t,(0.851,0.428)::laVI_t),
('pont-beaupre',0.6,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(166,0.854,4)::wsVI_t,(0.851,0.428)::laVI_t),
('pont-fritzi-stick',0.8,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(157.6,0.863,1)::wsVI_t,(0.820,0.481)::laVI_t),
('pont-fritzi',0.6,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(157.6,0.863,3.5)::wsVI_t,(0.820,0.481)::laVI_t),
('pont-raspalje-stick',0.8,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-raspalje',0.6,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-robusta-stick',0.8,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(162,0.838,1)::wsVI_t,(0.761,0.496)::laVI_t),
('pont-robusta',0.6,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(162,0.838,5)::wsVI_t,(0.761,0.496)::laVI_t);

INSERT INTO m3pgjs.tree (type,"fullCanAge", "kG", "alpha", "fT", "BLcond", "fAge", "fN0", "SLA","Conductance", "Intcptn", "pR", "y", "rootP","litterfall", "k","wsVI","laVI") VALUES(
'pont-beaupre-best-stick',0.8,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,1.0,(19,10.8,5,2)::tdp_t,(0.0001,0.04,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(166,0.854,4)::wsVI_t,(0.851,0.428)::laVI_t),
('pont-beaupre-best',0.5,0.4, 0.11,(0,20,60)::fT_t,0.04,(1,0,12,5)::tdp_t,1.0,(19,10.8,5,2)::tdp_t,(0.0001,0.04,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(166,0.854,1.5)::wsVI_t,(0.851,0.428)::laVI_t),
('pont-fritzi-best-stick',0.8,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,25,3.5)::tdp_t,0.8,(19,10.8,5,2)::tdp_t,(0.0001,0.04,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(157.6,0.863,1)::wsVI_t,(0.820,0.481)::laVI_t),
('pont-fritzi-best',0.7,0.3, 0.09,(0,20,60)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.8,(19,10.8,5,2)::tdp_t,(0.0001,0.03,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(157.6,0.863,3.5)::wsVI_t,(0.820,0.481)::laVI_t),
('pont-raspalje-best-stick',1.0,0.6, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.1,(19,10.8,5,2)::tdp_t,(0.0001,0.04,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-raspalje-best',0.9,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,25,3.5)::tdp_t,0.3,(19,10.8,5,2)::tdp_t,(0.0001,0.04,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-robusta-best-stick',1.0,0.5, 0.06,(0,20,50)::fT_t,0.04,(1,0,25,3.5)::tdp_t,1.0,(19,10.8,5,2)::tdp_t,(0.0001,0.04,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(162,0.838,1)::wsVI_t,(0.761,0.496)::laVI_t),
('pont-robusta-best',1.2,0.5, 0.06,(0,20,50)::fT_t,0.04,(1,0,25,3.5)::tdp_t,1.0,(19,10.8,5,2)::tdp_t,(0.0001,0.03,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(162,0.838,5)::wsVI_t,(0.761,0.496)::laVI_t);

INSERT INTO m3pgjs.tree (type,"fullCanAge", "kG", "alpha", "fT", "BLcond", "fAge", "fN0", "SLA","Conductance", "Intcptn", "pR", "y", "rootP","litterfall", "k","wsVI","laVI") VALUES 
('pont-age5-stick',0.8,0.5, 0.08,(0,20,45)::fT_t,0.04,(1,0,5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-age5',0.6,0.5, 0.08,(0,20,45)::fT_t,0.04,(1,0,5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-age10-stick',0.8,0.5, 0.08,(0,20,45)::fT_t,0.04,(1,0,10,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-age10',0.6,0.5, 0.08,(0,20,45)::fT_t,0.04,(1,0,10,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-age30-stick',0.8,0.5, 0.08,(0,20,45)::fT_t,0.04,(1,0,30,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-age30',0.6,0.5, 0.08,(0,20,45)::fT_t,0.04,(1,0,30,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t);

INSERT INTO m3pgjs.tree (type,"fullCanAge", "kG", "alpha", "fT", "BLcond", "fAge", "fN0", "SLA","Conductance", "Intcptn", "pR", "y", "rootP","litterfall", "k","wsVI","laVI") VALUES 
('pont-lit03-stick',0.8,0.5, 0.08,(0,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-lit03',0.6,0.5, 0.08,(0,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-lit06-stick',0.8,0.5, 0.08,(0,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.06,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-lit06',0.6,0.5, 0.08,(0,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.06,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-lit10-stick',0.8,0.5, 0.08,(0,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.1,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-lit10',0.6,0.5, 0.08,(0,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.1,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t);

INSERT INTO m3pgjs.tree (type,"fullCanAge", "kG", "alpha", "fT", "BLcond", "fAge", "fN0", "SLA","Conductance", "Intcptn", "pR", "y", "rootP","litterfall", "k","wsVI","laVI") VALUES 
('pont-full-age0-stick',0.8,0.5, 0.08,(0,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-full-age0',0.0,0.5, 0.08,(0,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-full-age3-stick',0.8,0.5, 0.08,(0,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-full-age3',0.25,0.5, 0.08,(0,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-full-age6-stick',0.8,0.5, 0.08,(0,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-full-age6',0.5,0.5, 0.08,(0,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-full-age9-stick',0.8,0.5, 0.08,(0,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-full-age9',0.75,0.5, 0.08,(0,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-full-age12-stick',0.8,0.5, 0.08,(0,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-full-age12',1.0,0.5, 0.08,(0,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t);

INSERT INTO m3pgjs.tree (type,"fullCanAge", "kG", "alpha", "fT", "BLcond", "fAge", "fN0", "SLA","Conductance", "Intcptn", "pR", "y", "rootP","litterfall", "k","wsVI","laVI") VALUES 
('pont-t15-stick',0.8,0.5, 0.08,(0,15,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-t15',0.6,0.5, 0.08,(0,15,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-t20-stick',0.8,0.5, 0.08,(0,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-t20',0.6,0.5, 0.08,(0,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-t25-stick',0.8,0.5, 0.08,(0,25,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-t25',0.6,0.5, 0.08,(0,25,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t);

INSERT INTO m3pgjs.tree (type,"fullCanAge", "kG", "alpha", "fT", "BLcond", "fAge", "fN0", "SLA","Conductance", "Intcptn", "pR", "y", "rootP","litterfall", "k","wsVI","laVI") VALUES 
('pont-stem1-stick',0.8,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-stem1',0.6,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-stem2-stick',0.8,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-stem2',0.6,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-stem3-stick',0.8,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-stem3',0.6,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,3)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-stem4-stick',0.8,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-stem4',0.6,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,4)::wsVI_t,(0.751,0.495)::laVI_t);


INSERT INTO m3pgjs.tree (type,"fullCanAge", "kG", "alpha", "fT", "BLcond", "fAge", "fN0", "SLA","Conductance", "Intcptn", "pR", "y", "rootP","litterfall", "k","wsVI","laVI") VALUES 
('pont-q5-stick',0.8,0.5, 0.05,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-q5',0.6,0.5, 0.05,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-q6-stick',0.8,0.5, 0.06,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-q6',0.6,0.5, 0.06,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-q7-stick',0.8,0.5, 0.07,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-q7',0.6,0.5, 0.07,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-q8-stick',0.8,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-q8',0.6,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-q10-stick',0.8,0.5, 0.1,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-q10',0.6,0.5, 0.1,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t);


INSERT INTO m3pgjs.tree (type,"fullCanAge", "kG", "alpha", "fT", "BLcond", "fAge", "fN0", "SLA","Conductance", "Intcptn", "pR", "y", "rootP","litterfall", "k","wsVI","laVI") VALUES 
('pont-cond_mx0-stick',0.8,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.00,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-cond_mx0',0.6,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.00,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-cond_mx1-stick',0.8,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.01,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-cond_mx1',0.6,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.01,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-cond_mx2-stick',0.8,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-cond_mx2',0.6,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-cond_mx3-stick',0.8,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.03,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-cond_mx3',0.6,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.03,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-cond_mx4-stick',0.8,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.04,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-cond_mx4',0.6,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.04,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-cond_mx6-stick',0.8,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.06,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-cond_mx6',0.6,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.06,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t);

INSERT INTO m3pgjs.tree (type,"fullCanAge", "kG", "alpha", "fT", "BLcond", "fAge", "fN0", "SLA","Conductance", "Intcptn", "pR", "y", "rootP","litterfall", "k","wsVI","laVI") VALUES 
('pont-kG5-stick',0.8,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.00,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-kG5',0.6,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.00,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-kG3-stick',0.8,0.3, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.01,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-kG3',0.6,0.3, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.01,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-kG4-stick',0.8,0.4, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-kG4',0.6,0.4, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-kG6-stick',0.8,0.6, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.03,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-kG6',0.6,0.6, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.03,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-kG7-stick',0.8,0.7, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.04,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-kG7',0.6,0.7, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.04,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t);


-- INSERT INTO m3pgjs.tree (type,"fullCanAge", "kG", "alpha", "fT", "BLcond", "fAge", "fN0", "SLA","Conductance", "Intcptn", "pR", "y", "rootP","litterfall", "k","wsVI","laVI") VALUES 
-- ('pont--stick',0.8,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
-- ('pont-',0.6,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t)


drop schema pontailler1999 cascade;
create schema pontailler1999;
set search_path=pontailler1999,m3pgjs,public;

-- Weather data
create table weather (
date date,
tdmean float,
tmax float,
tmin float,
ppt float,
rad float,
daylight float,
daylength float,
Irradiation_J_cm2 float,
latitude float,
T float,
SLP float,
H float,
VV float,
V float,
VM float,
VG float,
RA float,
SN float,
TS float,
FG float 
);

--\set runit `pgloader`
\COPY weather from pontailler1999/weather.csv with CSV header

create view pont as 
select type 
from tree 
where type like 'pont-%' and 
type not like '%-stick';

delete from plantation p using pont t where p.type=t.type;

--create table plantation of plantation_t ( type with options primary key);
insert into plantation("type","StockingDensity","SeedlingMass","pS","pF","pR","seedlingTree","coppicedTree")
with 
t as ( 
 select 
 p.type,
 t1 as tree,
 t2 as stick 
 from pont p join tree t1 using (type) 
 join tree t2 on (p.type||'-stick'=t2.type)
) 
select type,15625,0.0004,0.1,0,0.9,stick,tree
from t;

delete from public.location where name='pontailler1999';
insert into public.location (name,longitude,latitude,swconst,swpower,maxAWS) 
VALUES ('pontailler1999',2.1875,48.6993,0.55,6,10);

create view input as 
with w as (
     select l.location_id,date,(tmin,tmax,tdmean,ppt,rad,daylight)::weather_t as w
     from location l, weather
     where l.name='pontailler1999'
),
ws as (
select 
location_id,
array_agg(date order by date) as dates,
array_agg(w order by date) as weather
from w 
group by location_id
)
select 
location_id,
(maxaws,swpower,swconst)::soil_t as soil,
dates,
weather 
from ws join location using (location_id);

create view manage as 
with d as (
 select unnest(dates) as date 
 from input
)
select 'coppice'::text as manage_id,
array_agg(
(case when (date < '1990-12-15'::date)
 then 0.0 
 when (date < '1991-12-15'::date) 
 then 0.7 else 0.0 end,
case when (date < '1991-12-15'::date) 
then 1.0 else 0.7 end,
case when (date in ('1987-12-15'::date,'1989-12-15'::date,'1991-12-15'::date, '1993-12-15'::date, '1995-12-15'::date, '1997-12-15'::date )) 
            then true else false end)::manage_t
 order by date) as manage
from d
union
select 'coppiceWater'::text as manage_id,
array_agg(
(case when (date < '1991-12-15'::date) 
then 1.0 else 1.0 end,
case when (date < '1991-12-15'::date) 
then 1.0 else 1.0 end,
case when (date in ('1987-12-15'::date,'1989-12-15'::date,'1991-12-15'::date, '1993-12-15'::date, '1995-12-15'::date, '1997-12-15'::date )) 
            then true else false end)::manage_t
 order by date) as manage
from d;


drop table if exists growthmodel;
\set start `date`
create table growthmodel as 
select 
location_id,plantation.type,manage_id,
grow(plantation,soil,weather,manage) as ps 
from input,plantation join pont using (type),
manage;

create table measurements (
date date,
Beaupre float,
Raspalje float,
Pauley float,
Robusta float
);

\COPY measurements from pontailler1999/ws.csv with CSV header

create view measure as 
select date,'Beaupre' as type,Beaupre as ws from measurements 
union
select date,'Raspalje' as type,Raspalje from measurements 
union
select date,'Pauley' as type,Pauley from measurements 
union
select date,'Robusta' as type,Robusta from measurements ;

create view summary as 
with c(date) as (
VALUES (ARRAY['1987-12-15'::date,'1989-12-15'::date,'1991-12-15'::date, '1993-12-15'::date, '1995-12-15'::date, '1997-12-15'::date])
), 
sss as (
 select 
 unnest('1987-01-15'::date||date) as start,
 unnest(date||'1998-01-15'::date) as end from c
),
ss as (
 select row_number() OVER (ORDER BY start) as c,
 start,sss.end from sss
),
r(n,type) as (
 VALUES ('dbh','pont-hart12coppice'),('vi','pont-raspalje')
),
p as (
 select manage_id,type,unnest(dates) as date,
 (unnest(ps)).* from input join growthmodel using (location_id)
 where manage_id='coppice'
),
m as (
 select date,
 avg(ws)::decimal(6,2) as avg,
 stddev_samp(ws)::decimal(6,2) as stddev,
 avg(ws)::decimal(6,2)||' \pm '||stddev_samp(ws)::decimal(6,2) as samp 
 from measure 
 group by date order by date
) 
select 
'Pontailler1999'::text as study,
manage_id as manage,
ss.start,
ss.c-1 as coppice,
n,
((date-start)/365.25)::decimal(4,1) as years,
"WS"::decimal(6,2),
m.*
from p join m using (date) 
join r using (type) 
join ss on ((date,date) OVERLAPS (ss.start,ss.end)) 
where type in ('pont-hart12coppice','pont-raspalje') 
order by n,date;


-- output the files
\set foo `for m in coppice coppiceWater; do for t in $(psql -A -F, -t --pset=footer=off  -d poplarcoppice -c 'select type from pontailler1999.pont'); do psql -A -F, --pset=footer=off -d poplarcoppice -c "with a as (select dates from pontailler1999.input) select unnest(dates) as date,(unnest(ps)).* from pontailler1999.growthmodel,a where manage_id='$m' and type='$t'" > pontailler1999/$m/$t.csv; done;done`
