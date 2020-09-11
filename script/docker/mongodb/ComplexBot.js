/*
 Navicat Premium Data Transfer

 Source Server         : ComplesBot
 Source Server Type    : MongoDB
 Source Server Version : 40400
 Source Host           : localhost:27017
 Source Schema         : ComplexBot

 Target Server Type    : MongoDB
 Target Server Version : 40400
 File Encoding         : 65001

 Date: 10/09/2020 10:28:04
*/


db.createUser({
    user: "ComplexBot",
    pwd: "ComplexBot",
    roles: [
        {
            role: "dbAdmin",
            db: "ComplexBot"
        },
        {
            role: "dbOwner",
            db: "ComplexBot"
        },
        {
            role: "enableSharding",
            db: "ComplexBot"
        },
        {
            role: "read",
            db: "ComplexBot"
        },
        {
            role: "readWrite",
            db: "ComplexBot"
        },
        {
            role: "userAdmin",
            db: "ComplexBot"
        }
    ],
    authenticationRestrictions: [ ],
    mechanisms: [
        "SCRAM-SHA-1"
    ]
});

// ----------------------------
// Collection structure for groupOptions
// ----------------------------
db.createCollection("groupOptions");

// ----------------------------
// Collection structure for inspectorStatistics
// ----------------------------
db.createCollection("inspectorStatistics");
