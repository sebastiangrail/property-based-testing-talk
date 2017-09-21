//
//  LetterFrequency.swift
//  Property Based Testing Example
//
//  Created by Sebastian Grail on 30/8/17.
//  Copyright © 2017 Sebastian Grail. All rights reserved.
//

// Data via http://www.prooffreader.com/2014/09/how-often-does-given-letter-follow.html

import Foundation

let letterFrequency: [String: [(Double, String?)]] = [
    "_": [
        (0.026802181, "z"),
        (1.331213337, "y"),
        (0.011704648, "x"),
        (6.665903415, "w"),
        (0.626072267, "v"),
        (1.120628282, "u"),
        (15.785984051, "t"),
        (7.090602668, "s"),
        (2.353531695, "r"),
        (0.201526176, "q"),
        (3.366188256, "p"),
        (6.623767553, "o"),
        (2.291781026, "n"),
        (3.989545087, "m"),
        (2.585465265, "l"),
        (0.594179348, "k"),
        (0.551143464, "j"),
        (6.908207735, "i"),
        (6.350447030, "h"),
        (1.928962041, "g"),
        (3.871956648, "f"),
        (2.200153398, "e"),
        (3.163016734, "d"),
        (4.386648429, "c"),
        (4.682943604, "b"),
        (11.291625661, "a"),
    ],
    "a": [(7.837954860, nil),
          (0.021157184, "a"),
          (2.048922926, "b"),
          (3.850604671, "c"),
          (4.560407024, "d"),
          (0.079607242, "e"),
          (0.799861138, "f"),
          (1.887219404, "g"),
          (0.188354101, "h"),
          (4.013833503, "i"),
          (0.081953216, "j"),
          (1.352238382, "k"),
          (8.257176723, "l"),
          (2.754944389, "m"),
          (19.977811897, "n"),
          (0.031847879, "o"),
          (1.738771062, "p"),
          (0.015714325, "q"),
          (10.243649478, "r"),
          (9.376965803, "s"),	
          (13.265338094, "t"),	
          (1.234742521, "u"),	
          (2.413851434, "v"),	
          (0.831085512, "w"),	
          (0.125490395, "x"),	
          (2.841003060, "y"),	
          (0.169493779, "z"),],
    "b": [
        (1.284774988, nil),
        (8.465960185, "a"),
        (0.896109911, "b"),
        (0.062846846, "c"),
        (0.074747148, "d"),
        (31.185721899, "e"),
        (0.005265456, "f"),
        (0.005503611, "g"),
        (0.025069524, "h"),
        (4.762521236, "i"),
        (0.765757314, "j"),
        (0.002749945, "k"),
        (11.352992971, "l"),
        (0.128521781, "m"),
        (0.041829676, "n"),
        (11.488558927, "o"),
        (0.008651721, "p"),
        (0.000226991, "q"),
        (6.742879708, "r"),
        (1.693962319, "s"),
        (0.766776915, "t"),
        (12.459657862, "u"),
        (0.150059915, "v"),
        (0.029159091, "w"),
        (0.000881917, "x"),
        (7.597346002, "y"),
        (0.001466141, "z")
    ],
    "c": [
        (2.417544430, nil),
        (13.187710080, "a"),
        (0.015648039, "b"),
        (1.759728974, "c"),
        (0.031463886, "d"),
        (15.821029643, "e"),
        (0.005279640, "f"),
        (0.021718471, "g"),
        (15.978055408, "h"),
        (5.719815567, "i"),
        (0.000446787, "j"),
        (5.397396741, "k"),
        (3.802033008, "l"),
        (0.013584008, "m"),
        (0.024088751, "n"),
        (18.869351564, "o"),
        (0.007907923, "p"),
        (0.145224710, "q"),
        (3.963759477, "r"),
        (0.355487370, "s"),
        (8.239315572, "t"),
        (3.352206421, "u"),
        (0.002305254, "v"),
        (0.003031021, "w"),
        (0.000618790, "x"),
        (0.845677927, "y"),
        (0.019570537, "z")
    ],
    "d": [
        (59.443016940, nil),
        (3.077552602, "a"),
        (0.038271063, "b"),
        (0.036323651, "c"),
        (0.962371941, "d"),
        (12.848423006, "e"),
        (0.085310998, "f"),
        (0.584791886, "g"),
        (0.060641478, "h"),
        (7.466592157, "i"),
        (0.057472106, "j"),
        (0.017417754, "k"),
        (0.853919563, "l"),
        (0.351518936, "m"),
        (0.168474602, "n"),
        (6.050902100, "o"),
        (0.019903049, "p"),
        (0.018515587, "q"),
        (1.938188199, "r"),
        (2.425194339, "s"),
        (0.044226393, "t"),
        (1.749438167, "u"),
        (0.313541640, "v"),
        (0.174571988, "w"),
        (0.000100681, "x"),
        (1.210181523, "y"),
        (0.003137651, "z")
    ],
    "e": [
        (35.862676587, nil),
        (4.795099192, "a"),
        (0.163774879, "b"),
        (2.150118937, "c"),
        (7.855197252, "d"),
        (2.873208399, "e"),
        (0.919987320, "f"),
        (0.602777926, "g"),
        (0.167810961, "h"),
        (1.111812623, "i"),
        (0.027259748, "j"),
        (0.166228228, "k"),
        (3.389410645, "l"),
        (2.058324145, "m"),
        (8.446121915, "n"),
        (0.373730621, "o"),
        (1.010722668, "p"),
        (0.176879166, "q"),
        (13.146493322, "r"),
        (7.147902491, "s"),
        (2.662056305, "t"),
        (0.131919465, "u"),
        (1.588198013, "v"),
        (0.817436381, "w"),
        (0.985478434, "x"),
        (1.328093781, "y"),
        (0.041280596, "z")
    ],
    "f": [
        (38.726416771, nil),
        (6.532289394, "a"),
        (0.015660598, "b"),
        (0.014581600, "c"),
        (0.008652152, "d"),
        (8.054664864, "e"),
        (4.692570014, "f"),
        (0.014790845, "g"),
        (0.007270632, "h"),
        (8.379055035, "i"),
        (0.001018493, "j"),
        (0.004999189, "k"),
        (2.513530963, "l"),
        (0.014387481, "m"),
        (0.008768120, "n"),
        (16.125585287, "o"),
        (0.003335314, "p"),
        (0.000100841, "q"),
        (7.688103013, "r"),
        (0.161784159, "s"),
        (3.380979836, "t"),
        (3.422112855, "u"),
        (0.000675634, "v"),
        (0.014591684, "w"),
        (0.000388238, "x"),
        (0.213533207, "y"),
        (0.000153782, "z")
    ],
    "g": [
        (34.324167869, nil),
        (6.304329462, "a"),
        (0.025345719, "b"),
        (0.003545774, "c"),
        (0.075152142, "d"),
        (14.235863816, "e"),
        (0.029976352, "f"),
        (1.233329901, "g"),
        (12.327851877, "h"),
        (5.438529622, "i"),
        (0.000947824, "j"),
        (0.004833330, "k"),
        (2.816246875, "l"),
        (0.212663661, "m"),
        (1.859561590, "n"),
        (7.522474199, "o"),
        (0.010032086, "p"),
        (0.000559559, "q"),
        (7.233268064, "r"),
        (2.258606789, "s"),
        (0.610098702, "t"),
        (2.936192251, "u"),
        (0.002132603, "v"),
        (0.051339499, "w"),
        (0.000145599, "x"),
        (0.478885072, "y"),
        (0.003919765, "z")
    ],
    "h": [
        (10.051430178, nil),
        (15.622513902, "a"),
        (0.074894294, "b"),
        (0.012803087, "c"),
        (0.038411194, "d"),
        (47.415049018, "e"),
        (0.045861791, "f"),
        (0.002320282, "g"),
        (0.011925012, "h"),
        (12.816390888, "i"),
        (0.000521629, "j"),
        (0.004890752, "k"),
        (0.154935325, "l"),
        (0.140297843, "m"),
        (0.231108576, "n"),
        (7.478549588, "o"),
        (0.005757236, "p"),
        (0.004521748, "q"),
        (1.182774795, "r"),
        (0.199303713, "s"),
        (2.650969377, "t"),
        (1.177560440, "u"),
        (0.003401213, "v"),
        (0.058536403, "w"),
        (4.346906097e-05, "x"),
        (0.614922030, "y"),
        (0.000306215, "z")
    ],
    "i": [
        (4.048683517, nil),
        (2.085861413, "a"),
        (0.741631846, "b"),
        (5.893770010, "c"),
        (3.997332333, "d"),
        (3.856866817, "e"),
        (2.204253788, "f"),
        (3.004316544, "g"),
        (0.012589884, "h"),
        (0.088337269, "i"),
        (0.007946201, "j"),
        (0.792776572, "k"),
        (5.166604053, "l"),
        (3.790532786, "m"),
        (26.104937854, "n"),
        (5.672912614, "o"),
        (0.829470039, "p"),
        (0.060832002, "q"),
        (3.732140892, "r"),
        (11.908714704, "s"),
        (12.788141928, "t"),
        (0.123917163, "u"),
        (2.374706131, "v"),
        (0.006437593, "w"),
        (0.201082932, "x"),
        (0.002939997, "y"),
        (0.502263119, "z")
    ],
    "j": [
        (0.177940611, nil),
        (13.907323557, "a"),
        (0.007689679, "b"),
        (0.027309141, "c"),
        (0.011929782, "d"),
        (20.193887711, "e"),
        (0.013546771, "f"),
        (0.004491635, "g"),
        (0.010959589, "h"),
        (2.701664528, "i"),
        (0.015882421, "j"),
        (0.006180490, "k"),
        (0.014876295, "l"),
        (0.005318096, "m"),
        (0.021847312, "n"),
        (27.838973809, "o"),
        (0.019116398, "p"),
        (0.000215598, "q"),
        (0.227276729, "r"),
        (0.012468779, "s"),
        (0.012181314, "t"),
        (34.733022608, "u"),
        (0.003808906, "v"),
        (0.001185792, "w"),
        (0.000251532, "x"),
        (0.028746464, "y"),
        (0.001904453, "z")
    ],
    "k": [
        (31.292068167, nil),
        (1.879825909, "a"),
        (0.100577364, "b"),
        (0.022386838, "c"),
        (0.049334233, "d"),
        (32.900518656, "e"),
        (0.269904751, "f"),
        (0.116494747, "g"),
        (0.262670252, "h"),
        (13.255845460, "i"),
        (0.010406092, "j"),
        (0.047915558, "k"),
        (1.802192454, "l"),
        (0.159790327, "m"),
        (8.743783456, "n"),
        (0.779097616, "o"),
        (0.064657407, "p"),
        (0.000690768, "q"),
        (0.265039662, "r"),
        (6.159254945, "s"),
        (0.112654669, "t"),
        (0.295418616, "u"),
        (0.010985446, "v"),
        (0.280243994, "w"),
        (0.000876459, "x"),
        (1.117187892, "y"),
        (0.000178263, "z")
    ],
    "l": [
        (15.486716802, nil),
        (9.317620409, "a"),
        (0.134610283, "b"),
        (0.169381932, "c"),
        (6.739625081, "d"),
        (16.270751700, "e"),
        (1.299280325, "f"),
        (0.097485282, "g"),
        (0.027031738, "h"),
        (11.989000676, "i"),
        (0.001027559, "j"),
        (0.709027302, "k"),
        (13.095745767, "l"),
        (0.540661621, "m"),
        (0.101089514, "n"),
        (7.865621010, "o"),
        (0.407591971, "p"),
        (0.001112365, "q"),
        (0.253590921, "r"),
        (2.185360213, "s"),
        (1.798746284, "t"),
        (1.924558001, "u"),
        (0.596732160, "v"),
        (0.356006227, "w"),
        (0.002004236, "x"),
        (8.620460217, "y"),
        (0.009160402, "z")
    ],
    "m": [
        (15.315861663, nil),
        (16.698497087, "a"),
        (2.519279484, "b"),
        (0.170834311, "c"),
        (0.011985232, "d"),
        (25.876157656, "e"),
        (0.174903013, "f"),
        (0.008265276, "g"),
        (0.014286954, "h"),
        (9.580413188, "i"),
        (0.000950914, "j"),
        (0.003094538, "k"),
        (0.162603909, "l"),
        (2.464177641, "m"),
        (0.336502534, "n"),
        (11.150455325, "o"),
        (5.537651461, "p"),
        (0.000341771, "q"),
        (0.148261156, "r"),
        (2.585959688, "s"),
        (0.041837876, "t"),
        (3.518164287, "u"),
        (0.005870555, "v"),
        (0.016223656, "w"),
        (0.001146211, "x"),
        (3.652271012, "y"),
        (0.004003602, "z")
    ],
    "n": [
        (26.823473057, nil),
        (2.841425528, "a"),
        (0.060693348, "b"),
        (3.703611401, "c"),
        (16.259638868, "d"),
        (8.479178685, "e"),
        (0.555147090, "f"),
        (11.996973452, "g"),
        (0.116223767, "h"),
        (3.274106040, "i"),
        (0.107130762, "j"),
        (0.947997645, "k"),
        (0.831056988, "l"),
        (0.231767027, "m"),
        (0.936488548, "n"),
        (6.054792742, "o"),
        (0.048130002, "p"),
        (0.080441300, "q"),
        (0.104380618, "r"),
        (4.307239083, "s"),
        (9.638203169, "t"),
        (0.660842419, "u"),
        (0.437205103, "v"),
        (0.082605199, "w"),
        (0.041243065, "x"),
        (1.346186423, "y"),
        (0.033818669, "z")
    ],
    "o": [
        (13.954450437, nil),
        (0.693720866, "a"),
        (0.818025450, "b"),
        (1.174429681, "c"),
        (1.778665994, "d"),
        (0.445510336, "e"),
        (10.468067369, "f"),
        (0.581566196, "g"),
        (0.293438578, "h"),
        (0.995849493, "i"),
        (0.035241110, "j"),
        (1.141879577, "k"),
        (3.291132555, "l"),
        (5.605341660, "m"),
        (14.842732985, "n"),
        (3.358158649, "o"),
        (1.960694828, "p"),
        (0.015691303, "q"),
        (11.877301911, "r"),
        (2.834463294, "s"),
        (4.732232857, "t"),
        (12.197877169, "u"),
        (1.878678977, "v"),
        (4.409670384, "w"),
        (0.108602811, "x"),
        (0.451882591, "y"),
        (0.054692940, "z")
    ],
    "p": [
        (7.653400678, nil),
        (12.066134077, "a"),
        (0.060145897, "b"),
        (0.021140189, "c"),
        (0.015052863, "d"),
        (18.257343585, "e"),
        (0.039845447, "f"),
        (0.013198570, "g"),
        (2.683233723, "h"),
        (5.530865815, "i"),
        (0.001673234, "j"),
        (0.041037938, "k"),
        (9.622010495, "l"),
        (0.253257710, "m"),
        (0.030892396, "n"),
        (12.881489171, "o"),
        (5.694721006, "p"),
        (0.000190424, "q"),
        (14.744488575, "r"),
        (2.303521974, "s"),
        (3.408949049, "t"),
        (4.139453070, "u"),
        (0.001314238, "v"),
        (0.056028367, "w"),
        (0.002022865, "x"),
        (0.476125619, "y"),
        (0.002463026, "z")
    ],
    "q": [
        (0.768315481, nil),
        (0.137810325, "a"),
        (0.022611894, "b"),
        (0.004216813, "c"),
        (0.002688982, "d"),
        (0.007455814, "e"),
        (0.001161151, "f"),
        (0.000183340, "g"),
        (0.002138963, "h"),
        (0.182728547, "i"),
        (0.000366679, "j"),
        (0.001344491, "k"),
        (0.003300114, "l"),
        (0.002750095, "m"),
        (0.008800305, "n"),
        (0.009533663, "o"),
        (0.004339039, "p"),
        (0.007028021, "q"),
        (0.008311399, "r"),
        (0.015583873, "s"),
        (0.009411437, "t"),
        (98.702138413, "u"),
        (0.009228097, "v"),
        (0.077430458, "w"),
        (0.010328135, "x"),
        (0.000366679, "y"),
        (0.000427793, "z")
    ],
    "r": [
        (22.686377228, nil),
        (7.263706077, "a"),
        (0.303194357, "b"),
        (1.189263689, "c"),
        (2.660372085, "d"),
        (22.799550244, "e"),
        (0.370945600, "f"),
        (1.099674815, "g"),
        (0.228160047, "h"),
        (8.408562531, "i"),
        (0.008520380, "j"),
        (1.212427356, "k"),
        (1.282822954, "l"),
        (1.727315777, "m"),
        (2.245595955, "n"),
        (8.894406439, "o"),
        (0.473480437, "p"),
        (0.012042329, "q"),
        (1.723155401, "r"),
        (5.166816062, "s"),
        (4.376108439, "t"),
        (1.710546975, "u"),
        (0.667855997, "v"),
        (0.200439640, "w"),
        (0.004884632, "x"),
        (3.275268642, "y"),
        (0.008505914, "z")
    ],
    "s": [
        (40.803283647, nil),
        (3.851007634, "a"),
        (0.118728466, "b"),
        (1.561246835, "c"),
        (0.064429791, "d"),
        (10.584582933, "e"),
        (0.146939422, "f"),
        (0.042091643, "g"),
        (5.615315475, "h"),
        (5.582876242, "i"),
        (0.001966704, "j"),
        (0.689077052, "k"),
        (0.902766084, "l"),
        (0.777009907, "m"),
        (0.188981920, "n"),
        (4.974837206, "o"),
        (2.187014416, "p"),
        (0.120311112, "q"),
        (0.047433869, "r"),
        (4.633232354, "s"),
        (12.957032651, "t"),
        (3.200097918, "u"),
        (0.009690634, "v"),
        (0.489827501, "w"),
        (0.000342194, "x"),
        (0.445644472, "y"),
        (0.004231917, "z")
    ],
    "t": [
        (24.386446988, nil),
        (3.854330483, "a"),
        (0.027167873, "b"),
        (0.354668350, "c"),
        (0.007163155, "d"),
        (8.871554799, "e"),
        (0.072671999, "f"),
        (0.014091350, "g"),
        (32.155715757, "h"),
        (7.765069484, "i"),
        (0.001046697, "j"),
        (0.004670455, "k"),
        (1.177466352, "l"),
        (0.175665709, "m"),
        (0.097750853, "n"),
        (9.922352723, "o"),
        (0.014858095, "p"),
        (7.936148474e-05, "q"),
        (2.994442546, "r"),
        (2.378204367, "s"),
        (1.862895874, "t"),
        (1.709688215, "u"),
        (0.012431008, "v"),
        (0.601888123, "w"),
        (0.022425556, "x"),
        (1.480919674, "y"),
        (0.034334153, "z")
    ],
    "u": [
        (6.221900808, nil),
        (2.536652860, "a"),
        (2.131514824, "b"),
        (4.307975973, "c"),
        (2.277599669, "d"),
        (3.318923629, "e"),
        (0.592723227, "f"),
        (4.844880493, "g"),
        (0.050703385, "h"),
        (2.655980796, "i"),
        (0.007723538, "j"),
        (0.111299005, "k"),
        (10.238443747, "l"),
        (2.931258987, "m"),
        (11.729664295, "n"),
        (0.229704573, "o"),
        (4.697144879, "p"),
        (0.010736192, "q"),
        (14.039765551, "r"),
        (12.566332045, "s"),
        (14.001630713, "t"),
        (0.010820794, "u"),
        (0.073713048, "v"),
        (0.006865138, "w"),
        (0.087589829, "x"),
        (0.218925049, "y"),
        (0.099526955, "z")
    ],
    "v": [
        (0.548909454, nil),
        (7.797345867, "a"),
        (0.000537649, "b"),
        (0.007730194, "c"),
        (0.011888010, "d"),
        (68.613209849, "e"),
        (0.000937898, "f"),
        (0.003100441, "g"),
        (0.007485265, "h"),
        (16.913472312, "i"),
        (0.002049039, "j"),
        (0.003363291, "k"),
        (0.028847840, "l"),
        (0.001660737, "m"),
        (0.015024294, "n"),
        (5.132962017, "o"),
        (0.004832864, "p"),
        (2.389549782e-05, "q"),
        (0.072379463, "r"),
        (0.037253081, "s"),
        (0.004593909, "t"),
        (0.171575648, "u"),
        (0.018011231, "v"),
        (0.001726450, "w"),
        (0.000113504, "x"),
        (0.600870214, "y"),
        (9.558199128e-05, "z")
    ],
    "w": [
        (11.077271252, nil),
        (20.936192345, "a"),
        (0.058976586, "b"),
        (0.018906806, "c"),
        (0.264649726, "d"),
        (15.659743952, "e"),
        (0.105651423, "f"),
        (0.005321558, "g"),
        (17.834112341, "h"),
        (16.167470460, "i"),
        (0.000667204, "j"),
        (0.078858743, "k"),
        (0.671799854, "l"),
        (0.035728932, "m"),
        (4.005488226, "n"),
        (10.107547194, "o"),
        (0.025951306, "p"),
        (0.004105049, "q"),
        (1.174212843, "r"),
        (1.402177043, "s"),
        (0.119140207, "t"),
        (0.070854969, "u"),
        (0.001251343, "v"),
        (0.002944810, "w"),
        (0.000158093, "x"),
        (0.169925451, "y"),
        (0.000892285, "z")
    ],
    "x": [
        (12.402632244, nil),
        (8.096865113, "a"),
        (0.073015109, "b"),
        (12.341986189, "c"),
        (0.003289278, "d"),
        (8.238612418, "e"),
        (0.225623883, "f"),
        (0.007435138, "g"),
        (1.934540635, "h"),
        (11.160792908, "i"),
        (0.000890846, "j"),
        (0.008291721, "k"),
        (0.186221079, "l"),
        (0.054375870, "m"),
        (0.015829648, "n"),
        (1.127639731, "o"),
        (23.208251701, "p"),
        (0.290278746, "q"),
        (0.007572191, "r"),
        (0.037381269, "s"),
        (17.290224610, "t"),
        (1.438853358, "u"),
        (0.501169407, "v"),
        (0.134003798, "w"),
        (0.644390034, "x"),
        (0.563391574, "y"),
        (0.006441502, "z")
    ],
    "y": [
        (71.248263507, nil),
        (0.703074648, "a"),
        (0.441734460, "b"),
        (0.231144517, "c"),
        (0.175268474, "d"),
        (5.578963673, "e"),
        (0.054833355, "f"),
        (0.056196406, "g"),
        (0.056713217, "h"),
        (1.562718880, "i"),
        (0.001668302, "j"),
        (0.022086874, "k"),
        (0.496839821, "l"),
        (0.649725236, "m"),
        (0.379040137, "n"),
        (12.608718845, "o"),
        (0.392386557, "p"),
        (0.000770683, "q"),
        (0.261820732, "r"),
        (3.824371874, "s"),
        (0.870225259, "t"),
        (0.053573061, "u"),
        (0.013219484, "v"),
        (0.265498855, "w"),
        (0.007879102, "x"),
        (0.006528140, "y"),
        (0.036735900, "z")
    ],
    "z": [
        (7.875294478, nil),
        (15.576831694, "a"),
        (0.158876106, "b"),
        (0.077065695, "c"),
        (0.045002915, "d"),
        (45.318941986, "e"),
        (0.011286674, "f"),
        (0.217394274, "g"),
        (0.435866892, "h"),
        (12.023254861, "i"),
        (0.008195419, "j"),
        (0.132348829, "k"),
        (2.493204632, "l"),
        (0.170666007, "m"),
        (0.118186569, "n"),
        (4.827820716, "o"),
        (0.074837116, "p"),
        (0.012580687, "q"),
        (0.234072670, "r"),
        (0.109847371, "s"),
        (0.178430088, "t"),
        (1.153037948, "u"),
        (0.236157470, "v"),
        (0.106468558, "w"),
        (0.007835971, "x"),
        (3.056603746, "y"),
        (5.339890627, "z")
    ]
]
