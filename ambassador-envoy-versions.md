```
| leaf | graph   <- tag                 | old envoy                                                                                                       -> new envoy
|------|--------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|   >  |     o   <- 0.61.0              |
|      |     :                          |
|      |     o   <- 0.53.0(-rc1)        |
|      |     o      0dd5553             | quay.io/datawire/ambassador-envoy-alpine-stripped:v1.9.0-618-gecd186005                                         -> quay.io/datawire/ambassador-envoy-alpine-stripped:v1.9.0-619-g5830eaa1d
|      |     o      8ae72b7             | quay.io/datawire/ambassador-envoy-alpine-stripped:v1.9.0-617-g39d9a9b43                                         -> quay.io/datawire/ambassador-envoy-alpine-stripped:v1.9.0-618-gecd186005
|      |     o      9fe0f85             | quay.io/datawire/ambassador-envoy-alpine-stripped:v1.9.0-605-g27770bf3d                                         -> quay.io/datawire/ambassador-envoy-alpine-stripped:v1.9.0-617-g39d9a9b43
|      |     o      29f7d9a             | quay.io/datawire/ambassador-envoy-alpine-stripped:v1.9.0-604-g251b7d345                                         -> quay.io/datawire/ambassador-envoy-alpine-stripped:v1.9.0-605-g27770bf3d
|      |     o      8545cd5             | quay.io/datawire/ambassador-envoy-alpine-stripped:v1.8.0-15c5befd43fb9ee9b145cc87e507beb801726316-15-ga0d95bafb -> quay.io/datawire/ambassador-envoy-alpine-stripped:v1.9.0-604-g251b7d345
|      |     o   <- 0.52.1(-rc2)        |
|      |     :                          |
|      |     o   <- 0.52.0-rc1          |
|      |     o      0941ce8             | quay.io/datawire/ambassador-envoy-alpine-stripped:v1.8.0-15c5befd43fb9ee9b145cc87e507beb801726316-9-gf60eead70  -> quay.io/datawire/ambassador-envoy-alpine-stripped:v1.8.0-15c5befd43fb9ee9b145cc87e507beb801726316-15-ga0d95bafb
|      |     o   <- 0.51.2              |
|      |     :                          |
|      |     o   <- 0.51.0-rc1          |
|      |    /|                          |
|      |   | o   <- 0.51.0-rc0          |
|      |   o |      99e655b             | quay.io/datawire/ambassador-envoy-alpine-stripped:v1.8.0-15c5befd43fb9ee9b145cc87e507beb801726316-7-g4db17d1fb  -> quay.io/datawire/ambassador-envoy-alpine-stripped:v1.8.0-15c5befd43fb9ee9b145cc87e507beb801726316-9-gf60eead70
|      |    \|                          |
|      |     o   <- 0.50.3              |
|      |     :                          |
|      |     o   <- 0.50.2-rc0          |
|      |     o      00b0326             | quay.io/datawire/ambassador-envoy-alpine-stripped:v1.8.0-g14e2c65bb                                             -> quay.io/datawire/ambassador-envoy-alpine-stripped:v1.8.0-15c5befd43fb9ee9b145cc87e507beb801726316-7-g4db17d1fb
|      |     o   <- 0.50.1(-rc2)        |
|      |     o   <- 0.50.1-rc1          |
|      |     o      2f5ce6e             | quay.io/datawire/ambassador-envoy-alpine-stripped:v1.8.0-g523a9e31d                                             -> quay.io/datawire/ambassador-envoy-alpine-stripped:v1.8.0-g14e2c65bb
|      |     o   <- 0.50.0              |
|      |     :                          |
|      |     o   <- 0.50.0-rc6          |
|      |     o      be68bbd             | quay.io/datawire/ambassador-envoy-alpine-stripped:v1.8.0-g14e2c65bb                                             -> quay.io/datawire/ambassador-envoy-alpine-stripped:v1.8.0-g523a9e31d
|      |     o   <- 0.50.0-rc5          |
|      |     o      c0796b5             | quay.io/datawire/ambassador-envoy-alpine-stripped:v1.8.0-878705f86c                                             -> quay.io/datawire/ambassador-envoy-alpine-stripped:v1.8.0-g14e2c65bb
|      |     o      ec5eb9c             | quay.io/datawire/ambassador-envoy-alpine-stripped:v1.8.0-15c5befd43fb9ee9b145cc87e507beb801726316               -> quay.io/datawire/ambassador-envoy-alpine-stripped:v1.8.0-878705f86c
|      |     o   <- 0.50.0-rc4          |
|      |     :                          |
|      |     o   <- 0.50.0-ea7          |
|      |    /|                          |
|      |   | o      fc8d589             | { envoyproxy/envoy-alpine:f71a883b557a18cc418d4103b2f07a6780fc6576 , quay.io/datawire/ambassador-envoy:v1.7.0-66-g5f795fe2-alpine-stripped } -> envoyproxy/envoy-alpine:f71a883b557a18cc418d4103b2f07a6780fc6576
|      |   | |\                         |
|      |   o | |    15a05d9             | quay.io/datawire/interdax-envoy-alpine:latest                                                                   -> quay.io/datawire/ambassador-envoy-alpine-stripped:v1.8.0-15c5befd43fb9ee9b145cc87e507beb801726316
|      |   | | o <- 0.40.2(-rc0)        |
|      |   | | o <- 0.40.1(-rc2)        |
|      |   | | o    d1802a2             | quay.io/datawire/ambassador-envoy:v1.7.0-65-ga22b2f14-alpine-stripped                                           -> quay.io/datawire/ambassador-envoy:v1.7.0-66-g5f795fe2-alpine-stripped
|      |   | | o <- 0.40.1-rc1          |
|      |   |\| o    a635a23             | quay.io/datawire/ambassador-envoy:v1.7.0-64-g09ba72b1-alpine-stripped                                           -> quay.io/datawire/ambassador-envoy:v1.7.0-65-ga22b2f14-alpine-stripped
|      |   | o | <- 0.50.0-ea6          |
|      |   o | |    f95b8dc             | envoyproxy/envoy-alpine:f71a883b557a18cc418d4103b2f07a6780fc6576                                                -> quay.io/datawire/interdax-envoy-alpine:latest
|      |    \| |                        |
|      |     o |                        |
|      |    /| |                        |
|      |   o | |    05877ee             | envoyproxy/envoy-alpine:latest                                                                                  -> envoyproxy/envoy-alpine:f71a883b557a18cc418d4103b2f07a6780fc6576
|      |   | o | <- 0.50.0-ea5          |
|      |   o | |    2ec2671             | { envoyproxy/envoy-alpine:26e2a31650fe14db7e55a3136f9ae75db667bf5c , envoyproxy/envoy-alpine:v1.8.0 }           -> envoyproxy/envoy-alpine:latest
|      |   |\| |                        |
|      |   | o | <- 0.50.0-ea4          |
|      |    \o |    b2d69b8             | envoyproxy/envoy-alpine:26e2a31650fe14db7e55a3136f9ae75db667bf5c                                                -> envoyproxy/envoy-alpine:v1.8.0
|      |     o | <- 0.50.0-ea3          |
|      |     : |                        |
|      |     o | <- 0.50.0-rc0          |
|      |     o |    d2100b1             | quay.io/datawire/ambassador-envoy:v1.7.0-64-g09ba72b1-alpine-stripped                                           -> envoyproxy/envoy-alpine:26e2a31650fe14db7e55a3136f9ae75db667bf5c
|      |     |/                         |
|      |     o   <- 0.40.0              |
|      |     :                          |
|      |     o   <- 0.37.1-rc5          |
|   >  |   o  \  <- 0.37.1-rc4          |
|      |    \  o <- 0.37.1-rc3          |
|   >  |   o |/  <- 0.37.1-rc2          |
|   >  |    \| o <- 0.37.1-rc1          |
|      |     |/                         |
|      |     o   <- 0.37.0              |
|      |     :                          |
|      |     o   <- 0.37.0-rc4          |
|      |     o      3662c50             | quay.io/datawire/ambassador-envoy:v1.7.0-235-gaf17ea9a-alpine-stripped                                          -> quay.io/datawire/ambassador-envoy:v1.7.0-64-g09ba72b1-alpine-stripped
|      |     o   <- 0.37.0-rc3          |
|      |     o      61ff6ec             | quay.io/datawire/ambassador-envoy:v1.7.0-64-g09ba72b1-alpine-stripped                                           -> quay.io/datawire/ambassador-envoy:v1.7.0-235-gaf17ea9a-alpine-stripped
|      |     o   <- 0.37.0-rc2          |
|   >  |   o |   <- 0.37.0-rc1          | quay.io/datawire/ambassador-envoy:v1.7.0-64-g09ba72b1-alpine-stripped                                           -> quay.io/datawire/ambassador-envoy:v1.7.0-235-gaf17ea9a-alpine-stripped
|   >  |    \| o <- 0.37.0-rc0          | quay.io/datawire/ambassador-envoy:v1.7.0-64-g09ba72b1-alpine-stripped                                           -> quay.io/datawire/ambassador-envoy:v1.7.0-235-gaf17ea9a-alpine-stripped
|      |     |/                         |
|   >  |   o |   <- 0.36.1-unstable-rc0 |
|      |   | o   <- 0.36.0              |
|      |   | :                          |
|      |   | o   <- 0.36.0-rc0          | datawire/ambassador-envoy-alpine-stripped:v1.7.0-59-g07c6a004                                                   -> quay.io/datawire/ambassador-envoy:v1.7.0-64-g09ba72b1-alpine-stripped
|   >  |   | | o <- 0.36.0-unstable-rc0 |
|      |    \|/                         |
|      |     o                          |
|      |     |\                         |
|      |     o | <- 0.35.3              |
|      |     | o <- 0.35.3-rc2          |
|      |     | |                        |
|      |     | o <- 0.35.3-rc1          |
|      |     |/                         |
|      |     o   <- 0.35.3-rc0          |
|      |     o      7ba2d8c             | datawire/ambassador-envoy-alpine-stripped:v1.6.0-446-g100a92e2                                                  -> datawire/ambassador-envoy-alpine-stripped:v1.7.0-59-g07c6a004
|      |     o   <- 0.35.2              |
|      |     :                          |
|      |     o   <- 0.35.0-rc2          |
|   >  |   o |   <- 0.35.0-rc-ignore    |
|   >  |    \| o <- 0.35.0-rc1          |
|      |     |/                         |
|      |     o   <- 0.35.0-rc0          |
|      |     |                          |
|      |     o   <- 0.34.0-rc7          | (should have been tagged as 0.34.4-rc7)
|      |     |                          |
|      |     o   <- 0.34.0-rc6          | (should have been tagged as 0.34.4-rc6)
|      |     |\                         |
|      |     o | <- 0.34.4-rc5          |
|      |     : |                        |
|      |     o | <- 0.34.4-rc3          |
|      |     | o <- 0.34.4-rc0          | (should have been tagged as 0.34.4-rc2)
|   >  |   o |/  <- 0.34.4-rc1          | datawire/ambassador-envoy-alpine-stripped:v1.6.0-446-g100a92e2                                                  -> datawire/ambassador-envoy-alpine-stripped:v1.5.0-232-g6557e9ea7
|      |    \|                          |
|      |     o   <- 0.34.3              |
|      |     :                          |
|      |     o   <- 0.34.2-rc0          | datawire/ambassador-envoy-alpine-stripped:v1.5.0-232-g6557e9ea7                                                 -> datawire/ambassador-envoy-alpine-stripped:v1.6.0-446-g100a92e2
|      |     :                          |
|      |     o   <- 0.22.2              |
|      |     o      ba71cfc             | quay.io/datawire/ambassador-envoy-alpine-stripped:v1.5.0-231-g27a506c85                                         -> datawire/ambassador-envoy-alpine-stripped:v1.5.0-232-g6557e9ea7
|      |     o      eac03c8             | datawire/ambassador-envoy-alpine:v1.5.0-116-g7ccb25882                                                          -> quay.io/datawire/ambassador-envoy-alpine-stripped:v1.5.0-231-g27a506c85
|      |     o   <- 0.22.1              |
|      |     :                          |
|      |     o   <- 0.22.0              |
|      |     |\                         |
|      |     | o    7ac98fa             | datawire/ambassador-envoy-alpine:ambassador-envoy-v1.5.0-47-g6b197c85c-68-g3e4bfeb1d                            -> datawire/ambassador-envoy-alpine:v1.5.0-116-g7ccb25882
|      |     |/|                        |
|      |     | o    7fc4178             | datawire/ambassador-envoy:v1.5.0-47-g6b197c85c                                                                  -> datawire/ambassador-envoy-alpine:ambassador-envoy-v1.5.0-47-g6b197c85c-68-g3e4bfeb1d
|      |     o | <- 0.21.2              |
|      |     |/                         |
|      |     o   <- 0.21.1              |
|      |     :                          |
|      |     o   <- 0.20.0              |
|      |     o      4eb37fb             | datawire/ambassador-envoy:vtest_docs_tag3-60-gb2629d084                                                         -> datawire/ambassador-envoy:v1.5.0-47-g6b197c85c
|      |     o   <- 0.19.2              | 
|      |     :                          |
|      |     o   <- 0.18.0              | 
|      |     o      c594f6c             | dwflynn/ambassador-envoy:v1.4.0-49-g008635a04                                                                   -> datawire/ambassador-envoy:vtest_docs_tag3-60-gb2629d084
|      |     o   <- 0.17.0              | 
|      |     :                          |
|      |     o   <- 0.10.12             | 
|      |     o      0f16194             | datawire/ambassador-envoy:latest                                                                                -> dwflynn/ambassador-envoy:v1.4.0-49-g008635a04
|      |     o   <- 0.10.11             | 
|      |     :                          |
|      |     o   <- 0.9.0               | 
|      |     o      d23c578             | datawire/ambassador-envoy:368a4517                                                                              -> datawire/ambassador-envoy:latest
|      |     o      a223a8f             | dwflynn/envoy-with-extauth:0.0.2                                                                                -> datawire/ambassador-envoy:368a4517
|      |     o      1a442c5             | dwflynn/envoy-debug:latest                                                                                      -> dwflynn/envoy-with-extauth:0.0.2
|      |     o   <- 0.8.12              | 
|      |     :                          |
|      |     o   <- 0.3.1               | 
|      |     o      c0f479f             | lyft/envoy:4ef8079e9ff3056bab5fe9485e7fd2bc69d27dc5                                                             -> dwflynn/envoy-debug:latest
|      |     o   <- 0.3.0               | 
|      |     :                          |
|      |     o   <- 0.1.7               | lyft/envoy:latest                                                                                               -> lyft/envoy:4ef8079e9ff3056bab5fe9485e7fd2bc69d27dc5
|      |     :                          |
|      |     o   <- 0.1.3               | 
|      |     o      initial commit      | (nil)                                                                                                           -> lyft/envoy:latest
```
