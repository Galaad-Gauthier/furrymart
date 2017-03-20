#= require jquery.atwho

emojis = [
  {
    "name": "mahjong",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f004.png"
  },
  {
    "name": "black_joker",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f0cf.png"
  },
  {
    "name": "a_negative",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f170.png"
  },
  {
    "name": "b_negative",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f171.png"
  },
  {
    "name": "o_negative",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f17e.png"
  },
  {
    "name": "parking",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f17f.png"
  },
  {
    "name": "ab",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f18e.png"
  },
  {
    "name": "cl",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f191.png"
  },
  {
    "name": "cool",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f192.png"
  },
  {
    "name": "free",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f193.png"
  },
  {
    "name": "id",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f194.png"
  },
  {
    "name": "new",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f195.png"
  },
  {
    "name": "ng",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f196.png"
  },
  {
    "name": "ok",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f197.png"
  },
  {
    "name": "sos",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f198.png"
  },
  {
    "name": "up",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f199.png"
  },
  {
    "name": "vs",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f19a.png"
  },
  {
    "name": "a",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e6.png"
  },
  {
    "name": "flag-ac",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e6-1f1e8.png"
  },
  {
    "name": "flag-ad",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e6-1f1e9.png"
  },
  {
    "name": "flag-ae",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e6-1f1ea.png"
  },
  {
    "name": "flag-af",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e6-1f1eb.png"
  },
  {
    "name": "flag-ag",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e6-1f1ec.png"
  },
  {
    "name": "flag-ai",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e6-1f1ee.png"
  },
  {
    "name": "flag-al",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e6-1f1f1.png"
  },
  {
    "name": "flag-am",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e6-1f1f2.png"
  },
  {
    "name": "flag-ao",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e6-1f1f4.png"
  },
  {
    "name": "flag-aq",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e6-1f1f6.png"
  },
  {
    "name": "flag-ar",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e6-1f1f7.png"
  },
  {
    "name": "flag-as",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e6-1f1f8.png"
  },
  {
    "name": "flag-at",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e6-1f1f9.png"
  },
  {
    "name": "flag-au",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e6-1f1fa.png"
  },
  {
    "name": "flag-aw",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e6-1f1fc.png"
  },
  {
    "name": "flag-ax",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e6-1f1fd.png"
  },
  {
    "name": "flag-az",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e6-1f1ff.png"
  },
  {
    "name": "b",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e7.png"
  },
  {
    "name": "flag-ba",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e7-1f1e6.png"
  },
  {
    "name": "flag-bb",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e7-1f1e7.png"
  },
  {
    "name": "flag-bd",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e7-1f1e9.png"
  },
  {
    "name": "flag-be",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e7-1f1ea.png"
  },
  {
    "name": "flag-bf",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e7-1f1eb.png"
  },
  {
    "name": "flag-bg",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e7-1f1ec.png"
  },
  {
    "name": "flag-bh",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e7-1f1ed.png"
  },
  {
    "name": "flag-bi",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e7-1f1ee.png"
  },
  {
    "name": "flag-bj",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e7-1f1ef.png"
  },
  {
    "name": "flag-bl",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e7-1f1f1.png"
  },
  {
    "name": "flag-bm",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e7-1f1f2.png"
  },
  {
    "name": "flag-bn",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e7-1f1f3.png"
  },
  {
    "name": "flag-bo",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e7-1f1f4.png"
  },
  {
    "name": "flag-bq",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e7-1f1f6.png"
  },
  {
    "name": "flag-br",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e7-1f1f7.png"
  },
  {
    "name": "flag-bs",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e7-1f1f8.png"
  },
  {
    "name": "flag-bt",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e7-1f1f9.png"
  },
  {
    "name": "flag-bv",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e7-1f1fb.png"
  },
  {
    "name": "flag-bw",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e7-1f1fc.png"
  },
  {
    "name": "flag-by",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e7-1f1fe.png"
  },
  {
    "name": "flag-bz",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e7-1f1ff.png"
  },
  {
    "name": "c",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e8.png"
  },
  {
    "name": "flag-ca",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e8-1f1e6.png"
  },
  {
    "name": "flag-cc",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e8-1f1e8.png"
  },
  {
    "name": "flag-cd",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e8-1f1e9.png"
  },
  {
    "name": "flag-cf",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e8-1f1eb.png"
  },
  {
    "name": "flag-cg",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e8-1f1ec.png"
  },
  {
    "name": "flag-ch",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e8-1f1ed.png"
  },
  {
    "name": "flag-ci",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e8-1f1ee.png"
  },
  {
    "name": "flag-ck",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e8-1f1f0.png"
  },
  {
    "name": "flag-cl",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e8-1f1f1.png"
  },
  {
    "name": "flag-cm",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e8-1f1f2.png"
  },
  {
    "name": "flag-cn",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e8-1f1f3.png"
  },
  {
    "name": "flag-co",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e8-1f1f4.png"
  },
  {
    "name": "flag-cp",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e8-1f1f5.png"
  },
  {
    "name": "flag-cr",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e8-1f1f7.png"
  },
  {
    "name": "flag-cu",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e8-1f1fa.png"
  },
  {
    "name": "flag-cv",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e8-1f1fb.png"
  },
  {
    "name": "flag-cw",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e8-1f1fc.png"
  },
  {
    "name": "flag-cx",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e8-1f1fd.png"
  },
  {
    "name": "flag-cy",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e8-1f1fe.png"
  },
  {
    "name": "flag-cz",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e8-1f1ff.png"
  },
  {
    "name": "d",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e9.png"
  },
  {
    "name": "flag-de",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e9-1f1ea.png"
  },
  {
    "name": "flag-dg",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e9-1f1ec.png"
  },
  {
    "name": "flag-dj",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e9-1f1ef.png"
  },
  {
    "name": "flag-dk",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e9-1f1f0.png"
  },
  {
    "name": "flag-dm",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e9-1f1f2.png"
  },
  {
    "name": "flag-do",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e9-1f1f4.png"
  },
  {
    "name": "flag-dz",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1e9-1f1ff.png"
  },
  {
    "name": "e",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ea.png"
  },
  {
    "name": "flag-ea",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ea-1f1e6.png"
  },
  {
    "name": "flag-ec",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ea-1f1e8.png"
  },
  {
    "name": "flag-ee",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ea-1f1ea.png"
  },
  {
    "name": "flag-eg",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ea-1f1ec.png"
  },
  {
    "name": "flag-eh",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ea-1f1ed.png"
  },
  {
    "name": "flag-er",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ea-1f1f7.png"
  },
  {
    "name": "flag-es",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ea-1f1f8.png"
  },
  {
    "name": "flag-et",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ea-1f1f9.png"
  },
  {
    "name": "flag-eu",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ea-1f1fa.png"
  },
  {
    "name": "f",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1eb.png"
  },
  {
    "name": "flag-fi",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1eb-1f1ee.png"
  },
  {
    "name": "flag-fj",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1eb-1f1ef.png"
  },
  {
    "name": "flag-fk",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1eb-1f1f0.png"
  },
  {
    "name": "flag-fm",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1eb-1f1f2.png"
  },
  {
    "name": "flag-fo",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1eb-1f1f4.png"
  },
  {
    "name": "flag-fr",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1eb-1f1f7.png"
  },
  {
    "name": "g",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ec.png"
  },
  {
    "name": "flag-ga",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ec-1f1e6.png"
  },
  {
    "name": "flag-gb",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ec-1f1e7.png"
  },
  {
    "name": "flag-gd",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ec-1f1e9.png"
  },
  {
    "name": "flag-ge",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ec-1f1ea.png"
  },
  {
    "name": "flag-gf",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ec-1f1eb.png"
  },
  {
    "name": "flag-gg",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ec-1f1ec.png"
  },
  {
    "name": "flag-gh",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ec-1f1ed.png"
  },
  {
    "name": "flag-gi",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ec-1f1ee.png"
  },
  {
    "name": "flag-gl",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ec-1f1f1.png"
  },
  {
    "name": "flag-gm",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ec-1f1f2.png"
  },
  {
    "name": "flag-gn",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ec-1f1f3.png"
  },
  {
    "name": "flag-gp",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ec-1f1f5.png"
  },
  {
    "name": "flag-gq",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ec-1f1f6.png"
  },
  {
    "name": "flag-gr",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ec-1f1f7.png"
  },
  {
    "name": "flag-gs",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ec-1f1f8.png"
  },
  {
    "name": "flag-gt",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ec-1f1f9.png"
  },
  {
    "name": "flag-gu",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ec-1f1fa.png"
  },
  {
    "name": "flag-gw",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ec-1f1fc.png"
  },
  {
    "name": "flag-gy",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ec-1f1fe.png"
  },
  {
    "name": "h",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ed.png"
  },
  {
    "name": "flag-hk",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ed-1f1f0.png"
  },
  {
    "name": "flag-hm",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ed-1f1f2.png"
  },
  {
    "name": "flag-hn",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ed-1f1f3.png"
  },
  {
    "name": "flag-hr",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ed-1f1f7.png"
  },
  {
    "name": "flag-ht",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ed-1f1f9.png"
  },
  {
    "name": "flag-hu",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ed-1f1fa.png"
  },
  {
    "name": "i",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ee.png"
  },
  {
    "name": "flag-ic",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ee-1f1e8.png"
  },
  {
    "name": "flag-id",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ee-1f1e9.png"
  },
  {
    "name": "flag-ie",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ee-1f1ea.png"
  },
  {
    "name": "flag-il",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ee-1f1f1.png"
  },
  {
    "name": "flag-im",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ee-1f1f2.png"
  },
  {
    "name": "flag-in",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ee-1f1f3.png"
  },
  {
    "name": "flag-io",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ee-1f1f4.png"
  },
  {
    "name": "flag-iq",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ee-1f1f6.png"
  },
  {
    "name": "flag-ir",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ee-1f1f7.png"
  },
  {
    "name": "flag-is",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ee-1f1f8.png"
  },
  {
    "name": "flag-it",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ee-1f1f9.png"
  },
  {
    "name": "j",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ef.png"
  },
  {
    "name": "flag-je",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ef-1f1ea.png"
  },
  {
    "name": "flag-jm",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ef-1f1f2.png"
  },
  {
    "name": "flag-jo",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ef-1f1f4.png"
  },
  {
    "name": "flag-jp",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ef-1f1f5.png"
  },
  {
    "name": "k",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f0.png"
  },
  {
    "name": "flag-ke",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f0-1f1ea.png"
  },
  {
    "name": "flag-kg",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f0-1f1ec.png"
  },
  {
    "name": "flag-kh",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f0-1f1ed.png"
  },
  {
    "name": "flag-ki",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f0-1f1ee.png"
  },
  {
    "name": "flag-km",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f0-1f1f2.png"
  },
  {
    "name": "flag-kn",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f0-1f1f3.png"
  },
  {
    "name": "flag-kp",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f0-1f1f5.png"
  },
  {
    "name": "flag-kr",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f0-1f1f7.png"
  },
  {
    "name": "flag-kw",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f0-1f1fc.png"
  },
  {
    "name": "flag-ky",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f0-1f1fe.png"
  },
  {
    "name": "flag-kz",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f0-1f1ff.png"
  },
  {
    "name": "l",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f1.png"
  },
  {
    "name": "flag-la",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f1-1f1e6.png"
  },
  {
    "name": "flag-lb",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f1-1f1e7.png"
  },
  {
    "name": "flag-lc",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f1-1f1e8.png"
  },
  {
    "name": "flag-li",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f1-1f1ee.png"
  },
  {
    "name": "flag-lk",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f1-1f1f0.png"
  },
  {
    "name": "flag-lr",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f1-1f1f7.png"
  },
  {
    "name": "flag-ls",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f1-1f1f8.png"
  },
  {
    "name": "flag-lt",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f1-1f1f9.png"
  },
  {
    "name": "flag-lu",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f1-1f1fa.png"
  },
  {
    "name": "flag-lv",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f1-1f1fb.png"
  },
  {
    "name": "flag-ly",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f1-1f1fe.png"
  },
  {
    "name": "m",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f2.png"
  },
  {
    "name": "flag-ma",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f2-1f1e6.png"
  },
  {
    "name": "flag-mc",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f2-1f1e8.png"
  },
  {
    "name": "flag-md",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f2-1f1e9.png"
  },
  {
    "name": "flag-me",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f2-1f1ea.png"
  },
  {
    "name": "flag-mf",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f2-1f1eb.png"
  },
  {
    "name": "flag-mg",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f2-1f1ec.png"
  },
  {
    "name": "flag-mh",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f2-1f1ed.png"
  },
  {
    "name": "flag-mk",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f2-1f1f0.png"
  },
  {
    "name": "flag-ml",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f2-1f1f1.png"
  },
  {
    "name": "flag-mm",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f2-1f1f2.png"
  },
  {
    "name": "flag-mn",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f2-1f1f3.png"
  },
  {
    "name": "flag-mo",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f2-1f1f4.png"
  },
  {
    "name": "flag-mp",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f2-1f1f5.png"
  },
  {
    "name": "flag-mq",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f2-1f1f6.png"
  },
  {
    "name": "flag-mr",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f2-1f1f7.png"
  },
  {
    "name": "flag-ms",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f2-1f1f8.png"
  },
  {
    "name": "flag-mt",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f2-1f1f9.png"
  },
  {
    "name": "flag-mu",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f2-1f1fa.png"
  },
  {
    "name": "flag-mv",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f2-1f1fb.png"
  },
  {
    "name": "flag-mw",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f2-1f1fc.png"
  },
  {
    "name": "flag-mx",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f2-1f1fd.png"
  },
  {
    "name": "flag-my",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f2-1f1fe.png"
  },
  {
    "name": "flag-mz",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f2-1f1ff.png"
  },
  {
    "name": "n",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f3.png"
  },
  {
    "name": "flag-na",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f3-1f1e6.png"
  },
  {
    "name": "flag-nc",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f3-1f1e8.png"
  },
  {
    "name": "flag-ne",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f3-1f1ea.png"
  },
  {
    "name": "flag-nf",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f3-1f1eb.png"
  },
  {
    "name": "flag-ng",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f3-1f1ec.png"
  },
  {
    "name": "flag-ni",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f3-1f1ee.png"
  },
  {
    "name": "flag-nl",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f3-1f1f1.png"
  },
  {
    "name": "flag-no",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f3-1f1f4.png"
  },
  {
    "name": "flag-np",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f3-1f1f5.png"
  },
  {
    "name": "flag-nr",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f3-1f1f7.png"
  },
  {
    "name": "flag-nu",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f3-1f1fa.png"
  },
  {
    "name": "flag-nz",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f3-1f1ff.png"
  },
  {
    "name": "o",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f4.png"
  },
  {
    "name": "flag-om",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f4-1f1f2.png"
  },
  {
    "name": "p",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f5.png"
  },
  {
    "name": "flag-pa",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f5-1f1e6.png"
  },
  {
    "name": "flag-pe",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f5-1f1ea.png"
  },
  {
    "name": "flag-pf",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f5-1f1eb.png"
  },
  {
    "name": "flag-pg",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f5-1f1ec.png"
  },
  {
    "name": "flag-ph",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f5-1f1ed.png"
  },
  {
    "name": "flag-pk",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f5-1f1f0.png"
  },
  {
    "name": "flag-pl",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f5-1f1f1.png"
  },
  {
    "name": "flag-pm",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f5-1f1f2.png"
  },
  {
    "name": "flag-pn",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f5-1f1f3.png"
  },
  {
    "name": "flag-pr",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f5-1f1f7.png"
  },
  {
    "name": "flag-ps",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f5-1f1f8.png"
  },
  {
    "name": "flag-pt",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f5-1f1f9.png"
  },
  {
    "name": "flag-pw",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f5-1f1fc.png"
  },
  {
    "name": "flag-py",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f5-1f1fe.png"
  },
  {
    "name": "q",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f6.png"
  },
  {
    "name": "flag-qa",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f6-1f1e6.png"
  },
  {
    "name": "r",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f7.png"
  },
  {
    "name": "flag-re",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f7-1f1ea.png"
  },
  {
    "name": "flag-ro",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f7-1f1f4.png"
  },
  {
    "name": "flag-rs",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f7-1f1f8.png"
  },
  {
    "name": "flag-ru",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f7-1f1fa.png"
  },
  {
    "name": "flag-rw",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f7-1f1fc.png"
  },
  {
    "name": "s",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f8.png"
  },
  {
    "name": "flag-sa",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f8-1f1e6.png"
  },
  {
    "name": "flag-sb",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f8-1f1e7.png"
  },
  {
    "name": "flag-sc",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f8-1f1e8.png"
  },
  {
    "name": "flag-sd",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f8-1f1e9.png"
  },
  {
    "name": "flag-se",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f8-1f1ea.png"
  },
  {
    "name": "flag-sg",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f8-1f1ec.png"
  },
  {
    "name": "flag-sh",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f8-1f1ed.png"
  },
  {
    "name": "flag-si",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f8-1f1ee.png"
  },
  {
    "name": "flag-sj",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f8-1f1ef.png"
  },
  {
    "name": "flag-sk",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f8-1f1f0.png"
  },
  {
    "name": "flag-sl",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f8-1f1f1.png"
  },
  {
    "name": "flag-sm",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f8-1f1f2.png"
  },
  {
    "name": "flag-sn",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f8-1f1f3.png"
  },
  {
    "name": "flag-so",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f8-1f1f4.png"
  },
  {
    "name": "flag-sr",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f8-1f1f7.png"
  },
  {
    "name": "flag-ss",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f8-1f1f8.png"
  },
  {
    "name": "flag-st",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f8-1f1f9.png"
  },
  {
    "name": "flag-sv",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f8-1f1fb.png"
  },
  {
    "name": "flag-sx",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f8-1f1fd.png"
  },
  {
    "name": "flag-sy",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f8-1f1fe.png"
  },
  {
    "name": "flag-sz",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f8-1f1ff.png"
  },
  {
    "name": "t",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f9.png"
  },
  {
    "name": "flag-ta",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f9-1f1e6.png"
  },
  {
    "name": "flag-tc",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f9-1f1e8.png"
  },
  {
    "name": "flag-td",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f9-1f1e9.png"
  },
  {
    "name": "flag-tf",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f9-1f1eb.png"
  },
  {
    "name": "flag-tg",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f9-1f1ec.png"
  },
  {
    "name": "flag-th",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f9-1f1ed.png"
  },
  {
    "name": "flag-tj",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f9-1f1ef.png"
  },
  {
    "name": "flag-tk",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f9-1f1f0.png"
  },
  {
    "name": "flag-tl",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f9-1f1f1.png"
  },
  {
    "name": "flag-tm",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f9-1f1f2.png"
  },
  {
    "name": "flag-tn",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f9-1f1f3.png"
  },
  {
    "name": "flag-to",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f9-1f1f4.png"
  },
  {
    "name": "flag-tr",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f9-1f1f7.png"
  },
  {
    "name": "flag-tt",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f9-1f1f9.png"
  },
  {
    "name": "flag-tv",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f9-1f1fb.png"
  },
  {
    "name": "flag-tw",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f9-1f1fc.png"
  },
  {
    "name": "flag-tz",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1f9-1f1ff.png"
  },
  {
    "name": "u",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1fa.png"
  },
  {
    "name": "flag-ua",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1fa-1f1e6.png"
  },
  {
    "name": "flag-ug",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1fa-1f1ec.png"
  },
  {
    "name": "flag-um",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1fa-1f1f2.png"
  },
  {
    "name": "flag-us",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1fa-1f1f8.png"
  },
  {
    "name": "flag-uy",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1fa-1f1fe.png"
  },
  {
    "name": "flag-uz",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1fa-1f1ff.png"
  },
  {
    "name": "v",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1fb.png"
  },
  {
    "name": "flag-va",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1fb-1f1e6.png"
  },
  {
    "name": "flag-vc",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1fb-1f1e8.png"
  },
  {
    "name": "flag-ve",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1fb-1f1ea.png"
  },
  {
    "name": "flag-vg",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1fb-1f1ec.png"
  },
  {
    "name": "flag-vi",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1fb-1f1ee.png"
  },
  {
    "name": "flag-vn",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1fb-1f1f3.png"
  },
  {
    "name": "flag-vu",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1fb-1f1fa.png"
  },
  {
    "name": "w",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1fc.png"
  },
  {
    "name": "flag-wf",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1fc-1f1eb.png"
  },
  {
    "name": "flag-ws",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1fc-1f1f8.png"
  },
  {
    "name": "x",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1fd.png"
  },
  {
    "name": "flag-xk",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1fd-1f1f0.png"
  },
  {
    "name": "y",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1fe.png"
  },
  {
    "name": "flag-ye",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1fe-1f1ea.png"
  },
  {
    "name": "flag-yt",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1fe-1f1f9.png"
  },
  {
    "name": "z",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ff.png"
  },
  {
    "name": "flag-za",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ff-1f1e6.png"
  },
  {
    "name": "flag-zm",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ff-1f1f2.png"
  },
  {
    "name": "flag-zw",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f1ff-1f1fc.png"
  },
  {
    "name": "koko",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f201.png"
  },
  {
    "name": "sa",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f202.png"
  },
  {
    "name": "negation",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f21a.png"
  },
  {
    "name": "finger",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f22f.png"
  },
  {
    "name": "prohibit",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f232.png"
  },
  {
    "name": "empty",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f233.png"
  },
  {
    "name": "together",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f234.png"
  },
  {
    "name": "fullness",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f235.png"
  },
  {
    "name": "exist",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f236.png"
  },
  {
    "name": "moon",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f237.png"
  },
  {
    "name": "apply",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f238.png"
  },
  {
    "name": "divide",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f239.png"
  },
  {
    "name": "operating",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f23a.png"
  },
  {
    "name": "ideograph_advantage",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f250.png"
  },
  {
    "name": "accept",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f251.png"
  },
  {
    "name": "cyclone",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f300.png"
  },
  {
    "name": "foggy",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f301.png"
  },
  {
    "name": "closed_umbrella",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f302.png"
  },
  {
    "name": "night_with_stars",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f303.png"
  },
  {
    "name": "sunrise_over_mountains",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f304.png"
  },
  {
    "name": "sunrise",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f305.png"
  },
  {
    "name": "city_sunset",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f306.png"
  },
  {
    "name": "city_sunrise",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f307.png"
  },
  {
    "name": "rainbow",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f308.png"
  },
  {
    "name": "bridge_at_night",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f309.png"
  },
  {
    "name": "ocean",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f30a.png"
  },
  {
    "name": "volcano",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f30b.png"
  },
  {
    "name": "milky_way",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f30c.png"
  },
  {
    "name": "earth_africa",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f30d.png"
  },
  {
    "name": "earth_americas",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f30e.png"
  },
  {
    "name": "earth_asia",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f30f.png"
  },
  {
    "name": "globe_with_meridians",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f310.png"
  },
  {
    "name": "new_moon",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f311.png"
  },
  {
    "name": "waxing_crescent_moon",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f312.png"
  },
  {
    "name": "first_quarter_moon",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f313.png"
  },
  {
    "name": "waxing_gibbous_moon",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f314.png"
  },
  {
    "name": "full_moon",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f315.png"
  },
  {
    "name": "waning_gibbous_moon",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f316.png"
  },
  {
    "name": "last_quarter_moon",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f317.png"
  },
  {
    "name": "waning_crescent_moon",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f318.png"
  },
  {
    "name": "crescent_moon",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f319.png"
  },
  {
    "name": "new_moon_with_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f31a.png"
  },
  {
    "name": "first_quarter_moon_with_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f31b.png"
  },
  {
    "name": "last_quarter_moon_with_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f31c.png"
  },
  {
    "name": "full_moon_with_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f31d.png"
  },
  {
    "name": "sun_with_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f31e.png"
  },
  {
    "name": "star2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f31f.png"
  },
  {
    "name": "stars",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f320.png"
  },
  {
    "name": "thermometer",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f321.png"
  },
  {
    "name": "mostly_sunny",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f324.png"
  },
  {
    "name": "barely_sunny",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f325.png"
  },
  {
    "name": "partly_sunny_rain",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f326.png"
  },
  {
    "name": "rain_cloud",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f327.png"
  },
  {
    "name": "snow_cloud",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f328.png"
  },
  {
    "name": "lightning",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f329.png"
  },
  {
    "name": "tornado",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f32a.png"
  },
  {
    "name": "fog",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f32b.png"
  },
  {
    "name": "wind_blowing_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f32c.png"
  },
  {
    "name": "hotdog",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f32d.png"
  },
  {
    "name": "taco",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f32e.png"
  },
  {
    "name": "burrito",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f32f.png"
  },
  {
    "name": "chestnut",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f330.png"
  },
  {
    "name": "seedling",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f331.png"
  },
  {
    "name": "evergreen_tree",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f332.png"
  },
  {
    "name": "deciduous_tree",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f333.png"
  },
  {
    "name": "palm_tree",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f334.png"
  },
  {
    "name": "cactus",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f335.png"
  },
  {
    "name": "hot_pepper",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f336.png"
  },
  {
    "name": "tulip",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f337.png"
  },
  {
    "name": "cherry_blossom",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f338.png"
  },
  {
    "name": "rose",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f339.png"
  },
  {
    "name": "hibiscus",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f33a.png"
  },
  {
    "name": "sunflower",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f33b.png"
  },
  {
    "name": "blossom",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f33c.png"
  },
  {
    "name": "corn",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f33d.png"
  },
  {
    "name": "ear_of_rice",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f33e.png"
  },
  {
    "name": "herb",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f33f.png"
  },
  {
    "name": "four_leaf_clover",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f340.png"
  },
  {
    "name": "maple_leaf",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f341.png"
  },
  {
    "name": "fallen_leaf",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f342.png"
  },
  {
    "name": "leaves",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f343.png"
  },
  {
    "name": "mushroom",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f344.png"
  },
  {
    "name": "tomato",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f345.png"
  },
  {
    "name": "eggplant",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f346.png"
  },
  {
    "name": "grapes",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f347.png"
  },
  {
    "name": "melon",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f348.png"
  },
  {
    "name": "watermelon",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f349.png"
  },
  {
    "name": "tangerine",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f34a.png"
  },
  {
    "name": "lemon",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f34b.png"
  },
  {
    "name": "banana",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f34c.png"
  },
  {
    "name": "pineapple",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f34d.png"
  },
  {
    "name": "apple",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f34e.png"
  },
  {
    "name": "green_apple",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f34f.png"
  },
  {
    "name": "pear",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f350.png"
  },
  {
    "name": "peach",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f351.png"
  },
  {
    "name": "cherries",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f352.png"
  },
  {
    "name": "strawberry",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f353.png"
  },
  {
    "name": "hamburger",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f354.png"
  },
  {
    "name": "pizza",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f355.png"
  },
  {
    "name": "meat_on_bone",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f356.png"
  },
  {
    "name": "poultry_leg",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f357.png"
  },
  {
    "name": "rice_cracker",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f358.png"
  },
  {
    "name": "rice_ball",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f359.png"
  },
  {
    "name": "rice",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f35a.png"
  },
  {
    "name": "curry",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f35b.png"
  },
  {
    "name": "ramen",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f35c.png"
  },
  {
    "name": "spaghetti",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f35d.png"
  },
  {
    "name": "bread",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f35e.png"
  },
  {
    "name": "fries",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f35f.png"
  },
  {
    "name": "sweet_potato",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f360.png"
  },
  {
    "name": "dango",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f361.png"
  },
  {
    "name": "oden",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f362.png"
  },
  {
    "name": "sushi",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f363.png"
  },
  {
    "name": "fried_shrimp",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f364.png"
  },
  {
    "name": "fish_cake",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f365.png"
  },
  {
    "name": "icecream",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f366.png"
  },
  {
    "name": "shaved_ice",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f367.png"
  },
  {
    "name": "ice_cream",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f368.png"
  },
  {
    "name": "doughnut",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f369.png"
  },
  {
    "name": "cookie",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f36a.png"
  },
  {
    "name": "chocolate_bar",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f36b.png"
  },
  {
    "name": "candy",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f36c.png"
  },
  {
    "name": "lollipop",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f36d.png"
  },
  {
    "name": "custard",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f36e.png"
  },
  {
    "name": "honey_pot",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f36f.png"
  },
  {
    "name": "cake",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f370.png"
  },
  {
    "name": "bento",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f371.png"
  },
  {
    "name": "stew",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f372.png"
  },
  {
    "name": "egg",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f373.png"
  },
  {
    "name": "fork_and_knife",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f374.png"
  },
  {
    "name": "tea",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f375.png"
  },
  {
    "name": "sake",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f376.png"
  },
  {
    "name": "wine_glass",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f377.png"
  },
  {
    "name": "cocktail",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f378.png"
  },
  {
    "name": "tropical_drink",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f379.png"
  },
  {
    "name": "beer",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f37a.png"
  },
  {
    "name": "beers",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f37b.png"
  },
  {
    "name": "baby_bottle",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f37c.png"
  },
  {
    "name": "knife_fork_plate",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f37d.png"
  },
  {
    "name": "champagne",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f37e.png"
  },
  {
    "name": "popcorn",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f37f.png"
  },
  {
    "name": "ribbon",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f380.png"
  },
  {
    "name": "gift",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f381.png"
  },
  {
    "name": "birthday",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f382.png"
  },
  {
    "name": "jack_o_lantern",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f383.png"
  },
  {
    "name": "christmas_tree",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f384.png"
  },
  {
    "name": "santa::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f385-1f3fb.png"
  },
  {
    "name": "santa::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f385-1f3fc.png"
  },
  {
    "name": "santa::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f385-1f3fd.png"
  },
  {
    "name": "santa::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f385-1f3fe.png"
  },
  {
    "name": "santa::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f385-1f3ff.png"
  },
  {
    "name": "santa",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f385.png"
  },
  {
    "name": "fireworks",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f386.png"
  },
  {
    "name": "sparkler",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f387.png"
  },
  {
    "name": "balloon",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f388.png"
  },
  {
    "name": "tada",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f389.png"
  },
  {
    "name": "confetti_ball",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f38a.png"
  },
  {
    "name": "tanabata_tree",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f38b.png"
  },
  {
    "name": "crossed_flags",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f38c.png"
  },
  {
    "name": "bamboo",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f38d.png"
  },
  {
    "name": "dolls",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f38e.png"
  },
  {
    "name": "flags",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f38f.png"
  },
  {
    "name": "wind_chime",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f390.png"
  },
  {
    "name": "rice_scene",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f391.png"
  },
  {
    "name": "school_satchel",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f392.png"
  },
  {
    "name": "mortar_board",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f393.png"
  },
  {
    "name": "medal",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f396.png"
  },
  {
    "name": "reminder_ribbon",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f397.png"
  },
  {
    "name": "studio_microphone",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f399.png"
  },
  {
    "name": "level_slider",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f39a.png"
  },
  {
    "name": "control_knobs",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f39b.png"
  },
  {
    "name": "film_frames",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f39e.png"
  },
  {
    "name": "admission_tickets",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f39f.png"
  },
  {
    "name": "carousel_horse",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3a0.png"
  },
  {
    "name": "ferris_wheel",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3a1.png"
  },
  {
    "name": "roller_coaster",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3a2.png"
  },
  {
    "name": "fishing_pole_and_fish",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3a3.png"
  },
  {
    "name": "microphone",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3a4.png"
  },
  {
    "name": "movie_camera",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3a5.png"
  },
  {
    "name": "cinema",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3a6.png"
  },
  {
    "name": "headphones",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3a7.png"
  },
  {
    "name": "art",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3a8.png"
  },
  {
    "name": "tophat",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3a9.png"
  },
  {
    "name": "circus_tent",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3aa.png"
  },
  {
    "name": "ticket",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3ab.png"
  },
  {
    "name": "clapper",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3ac.png"
  },
  {
    "name": "performing_arts",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3ad.png"
  },
  {
    "name": "video_game",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3ae.png"
  },
  {
    "name": "dart",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3af.png"
  },
  {
    "name": "slot_machine",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3b0.png"
  },
  {
    "name": "8ball",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3b1.png"
  },
  {
    "name": "game_die",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3b2.png"
  },
  {
    "name": "bowling",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3b3.png"
  },
  {
    "name": "flower_playing_cards",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3b4.png"
  },
  {
    "name": "musical_note",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3b5.png"
  },
  {
    "name": "notes",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3b6.png"
  },
  {
    "name": "saxophone",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3b7.png"
  },
  {
    "name": "guitar",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3b8.png"
  },
  {
    "name": "musical_keyboard",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3b9.png"
  },
  {
    "name": "trumpet",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3ba.png"
  },
  {
    "name": "violin",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3bb.png"
  },
  {
    "name": "musical_score",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3bc.png"
  },
  {
    "name": "running_shirt_with_sash",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3bd.png"
  },
  {
    "name": "tennis",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3be.png"
  },
  {
    "name": "ski",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3bf.png"
  },
  {
    "name": "basketball",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c0.png"
  },
  {
    "name": "checkered_flag",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c1.png"
  },
  {
    "name": "snowboarder::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c2-1f3fb.png"
  },
  {
    "name": "snowboarder::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c2-1f3fc.png"
  },
  {
    "name": "snowboarder::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c2-1f3fd.png"
  },
  {
    "name": "snowboarder::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c2-1f3fe.png"
  },
  {
    "name": "snowboarder::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c2-1f3ff.png"
  },
  {
    "name": "snowboarder",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c2.png"
  },
  {
    "name": "runner::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c3-1f3fb.png"
  },
  {
    "name": "runner::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c3-1f3fc.png"
  },
  {
    "name": "runner::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c3-1f3fd.png"
  },
  {
    "name": "runner::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c3-1f3fe.png"
  },
  {
    "name": "runner::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c3-1f3ff.png"
  },
  {
    "name": "runner",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c3.png"
  },
  {
    "name": "surfer::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c4-1f3fb.png"
  },
  {
    "name": "surfer::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c4-1f3fc.png"
  },
  {
    "name": "surfer::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c4-1f3fd.png"
  },
  {
    "name": "surfer::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c4-1f3fe.png"
  },
  {
    "name": "surfer::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c4-1f3ff.png"
  },
  {
    "name": "surfer",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c4.png"
  },
  {
    "name": "sports_medal",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c5.png"
  },
  {
    "name": "trophy",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c6.png"
  },
  {
    "name": "horse_racing::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c7-1f3fb.png"
  },
  {
    "name": "horse_racing::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c7-1f3fc.png"
  },
  {
    "name": "horse_racing::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c7-1f3fd.png"
  },
  {
    "name": "horse_racing::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c7-1f3fe.png"
  },
  {
    "name": "horse_racing::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c7-1f3ff.png"
  },
  {
    "name": "horse_racing",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c7.png"
  },
  {
    "name": "football",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c8.png"
  },
  {
    "name": "rugby_football",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3c9.png"
  },
  {
    "name": "swimmer::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3ca-1f3fb.png"
  },
  {
    "name": "swimmer::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3ca-1f3fc.png"
  },
  {
    "name": "swimmer::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3ca-1f3fd.png"
  },
  {
    "name": "swimmer::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3ca-1f3fe.png"
  },
  {
    "name": "swimmer::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3ca-1f3ff.png"
  },
  {
    "name": "swimmer",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3ca.png"
  },
  {
    "name": "weight_lifter::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3cb-1f3fb.png"
  },
  {
    "name": "weight_lifter::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3cb-1f3fc.png"
  },
  {
    "name": "weight_lifter::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3cb-1f3fd.png"
  },
  {
    "name": "weight_lifter::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3cb-1f3fe.png"
  },
  {
    "name": "weight_lifter::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3cb-1f3ff.png"
  },
  {
    "name": "weight_lifter",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3cb.png"
  },
  {
    "name": "golfer",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3cc.png"
  },
  {
    "name": "racing_motorcycle",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3cd.png"
  },
  {
    "name": "racing_car",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3ce.png"
  },
  {
    "name": "cricket_bat_and_ball",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3cf.png"
  },
  {
    "name": "volleyball",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3d0.png"
  },
  {
    "name": "field_hockey_stick_and_ball",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3d1.png"
  },
  {
    "name": "ice_hockey_stick_and_puck",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3d2.png"
  },
  {
    "name": "table_tennis_paddle_and_ball",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3d3.png"
  },
  {
    "name": "snow_capped_mountain",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3d4.png"
  },
  {
    "name": "camping",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3d5.png"
  },
  {
    "name": "beach_with_umbrella",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3d6.png"
  },
  {
    "name": "building_construction",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3d7.png"
  },
  {
    "name": "house_buildings",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3d8.png"
  },
  {
    "name": "cityscape",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3d9.png"
  },
  {
    "name": "derelict_house_building",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3da.png"
  },
  {
    "name": "classical_building",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3db.png"
  },
  {
    "name": "desert",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3dc.png"
  },
  {
    "name": "desert_island",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3dd.png"
  },
  {
    "name": "national_park",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3de.png"
  },
  {
    "name": "stadium",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3df.png"
  },
  {
    "name": "house",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3e0.png"
  },
  {
    "name": "house_with_garden",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3e1.png"
  },
  {
    "name": "office",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3e2.png"
  },
  {
    "name": "post_office",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3e3.png"
  },
  {
    "name": "european_post_office",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3e4.png"
  },
  {
    "name": "hospital",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3e5.png"
  },
  {
    "name": "bank",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3e6.png"
  },
  {
    "name": "atm",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3e7.png"
  },
  {
    "name": "hotel",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3e8.png"
  },
  {
    "name": "love_hotel",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3e9.png"
  },
  {
    "name": "convenience_store",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3ea.png"
  },
  {
    "name": "school",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3eb.png"
  },
  {
    "name": "department_store",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3ec.png"
  },
  {
    "name": "factory",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3ed.png"
  },
  {
    "name": "izakaya_lantern",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3ee.png"
  },
  {
    "name": "japanese_castle",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3ef.png"
  },
  {
    "name": "european_castle",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3f0.png"
  },
  {
    "name": "waving_white_flag",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3f3.png"
  },
  {
    "name": "waving_black_flag",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3f4.png"
  },
  {
    "name": "rosette",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3f5.png"
  },
  {
    "name": "label",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3f7.png"
  },
  {
    "name": "badminton_racquet_and_shuttlecock",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3f8.png"
  },
  {
    "name": "bow_and_arrow",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3f9.png"
  },
  {
    "name": "amphora",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3fa.png"
  },
  {
    "name": "skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3fb.png"
  },
  {
    "name": "skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3fc.png"
  },
  {
    "name": "skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3fd.png"
  },
  {
    "name": "skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3fe.png"
  },
  {
    "name": "skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f3ff.png"
  },
  {
    "name": "rat",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f400.png"
  },
  {
    "name": "mouse2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f401.png"
  },
  {
    "name": "ox",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f402.png"
  },
  {
    "name": "water_buffalo",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f403.png"
  },
  {
    "name": "cow2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f404.png"
  },
  {
    "name": "tiger2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f405.png"
  },
  {
    "name": "leopard",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f406.png"
  },
  {
    "name": "rabbit2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f407.png"
  },
  {
    "name": "cat2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f408.png"
  },
  {
    "name": "dragon",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f409.png"
  },
  {
    "name": "crocodile",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f40a.png"
  },
  {
    "name": "whale2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f40b.png"
  },
  {
    "name": "snail",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f40c.png"
  },
  {
    "name": "snake",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f40d.png"
  },
  {
    "name": "racehorse",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f40e.png"
  },
  {
    "name": "ram",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f40f.png"
  },
  {
    "name": "goat",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f410.png"
  },
  {
    "name": "sheep",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f411.png"
  },
  {
    "name": "monkey",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f412.png"
  },
  {
    "name": "rooster",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f413.png"
  },
  {
    "name": "chicken",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f414.png"
  },
  {
    "name": "dog2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f415.png"
  },
  {
    "name": "pig2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f416.png"
  },
  {
    "name": "boar",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f417.png"
  },
  {
    "name": "elephant",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f418.png"
  },
  {
    "name": "octopus",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f419.png"
  },
  {
    "name": "shell",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f41a.png"
  },
  {
    "name": "bug",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f41b.png"
  },
  {
    "name": "ant",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f41c.png"
  },
  {
    "name": "bee",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f41d.png"
  },
  {
    "name": "beetle",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f41e.png"
  },
  {
    "name": "fish",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f41f.png"
  },
  {
    "name": "tropical_fish",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f420.png"
  },
  {
    "name": "blowfish",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f421.png"
  },
  {
    "name": "turtle",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f422.png"
  },
  {
    "name": "hatching_chick",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f423.png"
  },
  {
    "name": "baby_chick",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f424.png"
  },
  {
    "name": "hatched_chick",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f425.png"
  },
  {
    "name": "bird",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f426.png"
  },
  {
    "name": "penguin",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f427.png"
  },
  {
    "name": "koala",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f428.png"
  },
  {
    "name": "poodle",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f429.png"
  },
  {
    "name": "dromedary_camel",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f42a.png"
  },
  {
    "name": "camel",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f42b.png"
  },
  {
    "name": "dolphin",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f42c.png"
  },
  {
    "name": "mouse",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f42d.png"
  },
  {
    "name": "cow",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f42e.png"
  },
  {
    "name": "tiger",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f42f.png"
  },
  {
    "name": "rabbit",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f430.png"
  },
  {
    "name": "cat",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f431.png"
  },
  {
    "name": "dragon_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f432.png"
  },
  {
    "name": "whale",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f433.png"
  },
  {
    "name": "horse",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f434.png"
  },
  {
    "name": "monkey_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f435.png"
  },
  {
    "name": "dog",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f436.png"
  },
  {
    "name": "pig",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f437.png"
  },
  {
    "name": "frog",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f438.png"
  },
  {
    "name": "hamster",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f439.png"
  },
  {
    "name": "wolf",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f43a.png"
  },
  {
    "name": "bear",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f43b.png"
  },
  {
    "name": "panda_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f43c.png"
  },
  {
    "name": "pig_nose",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f43d.png"
  },
  {
    "name": "feet",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f43e.png"
  },
  {
    "name": "chipmunk",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f43f.png"
  },
  {
    "name": "eyes",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f440.png"
  },
  {
    "name": "eye",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f441.png"
  },
  {
    "name": "eye::left_speech_bubble",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f441-200d-1f5e8.png"
  },
  {
    "name": "ear::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f442-1f3fb.png"
  },
  {
    "name": "ear::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f442-1f3fc.png"
  },
  {
    "name": "ear::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f442-1f3fd.png"
  },
  {
    "name": "ear::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f442-1f3fe.png"
  },
  {
    "name": "ear::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f442-1f3ff.png"
  },
  {
    "name": "ear",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f442.png"
  },
  {
    "name": "nose::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f443-1f3fb.png"
  },
  {
    "name": "nose::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f443-1f3fc.png"
  },
  {
    "name": "nose::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f443-1f3fd.png"
  },
  {
    "name": "nose::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f443-1f3fe.png"
  },
  {
    "name": "nose::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f443-1f3ff.png"
  },
  {
    "name": "nose",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f443.png"
  },
  {
    "name": "lips",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f444.png"
  },
  {
    "name": "tongue",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f445.png"
  },
  {
    "name": "point_up_2::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f446-1f3fb.png"
  },
  {
    "name": "point_up_2::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f446-1f3fc.png"
  },
  {
    "name": "point_up_2::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f446-1f3fd.png"
  },
  {
    "name": "point_up_2::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f446-1f3fe.png"
  },
  {
    "name": "point_up_2::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f446-1f3ff.png"
  },
  {
    "name": "point_up_2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f446.png"
  },
  {
    "name": "point_down::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f447-1f3fb.png"
  },
  {
    "name": "point_down::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f447-1f3fc.png"
  },
  {
    "name": "point_down::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f447-1f3fd.png"
  },
  {
    "name": "point_down::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f447-1f3fe.png"
  },
  {
    "name": "point_down::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f447-1f3ff.png"
  },
  {
    "name": "point_down",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f447.png"
  },
  {
    "name": "point_left::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f448-1f3fb.png"
  },
  {
    "name": "point_left::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f448-1f3fc.png"
  },
  {
    "name": "point_left::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f448-1f3fd.png"
  },
  {
    "name": "point_left::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f448-1f3fe.png"
  },
  {
    "name": "point_left::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f448-1f3ff.png"
  },
  {
    "name": "point_left",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f448.png"
  },
  {
    "name": "point_right::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f449-1f3fb.png"
  },
  {
    "name": "point_right::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f449-1f3fc.png"
  },
  {
    "name": "point_right::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f449-1f3fd.png"
  },
  {
    "name": "point_right::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f449-1f3fe.png"
  },
  {
    "name": "point_right::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f449-1f3ff.png"
  },
  {
    "name": "point_right",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f449.png"
  },
  {
    "name": "facepunch::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44a-1f3fb.png"
  },
  {
    "name": "facepunch::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44a-1f3fc.png"
  },
  {
    "name": "facepunch::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44a-1f3fd.png"
  },
  {
    "name": "facepunch::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44a-1f3fe.png"
  },
  {
    "name": "facepunch::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44a-1f3ff.png"
  },
  {
    "name": "facepunch",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44a.png"
  },
  {
    "name": "wave::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44b-1f3fb.png"
  },
  {
    "name": "wave::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44b-1f3fc.png"
  },
  {
    "name": "wave::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44b-1f3fd.png"
  },
  {
    "name": "wave::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44b-1f3fe.png"
  },
  {
    "name": "wave::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44b-1f3ff.png"
  },
  {
    "name": "wave",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44b.png"
  },
  {
    "name": "ok_hand::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44c-1f3fb.png"
  },
  {
    "name": "ok_hand::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44c-1f3fc.png"
  },
  {
    "name": "ok_hand::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44c-1f3fd.png"
  },
  {
    "name": "ok_hand::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44c-1f3fe.png"
  },
  {
    "name": "ok_hand::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44c-1f3ff.png"
  },
  {
    "name": "ok_hand",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44c.png"
  },
  {
    "name": "+1::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44d-1f3fb.png"
  },
  {
    "name": "+1::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44d-1f3fc.png"
  },
  {
    "name": "+1::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44d-1f3fd.png"
  },
  {
    "name": "+1::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44d-1f3fe.png"
  },
  {
    "name": "+1::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44d-1f3ff.png"
  },
  {
    "name": "+1",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44d.png"
  },
  {
    "name": "-1::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44e-1f3fb.png"
  },
  {
    "name": "-1::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44e-1f3fc.png"
  },
  {
    "name": "-1::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44e-1f3fd.png"
  },
  {
    "name": "-1::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44e-1f3fe.png"
  },
  {
    "name": "-1::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44e-1f3ff.png"
  },
  {
    "name": "-1",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44e.png"
  },
  {
    "name": "clap::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44f-1f3fb.png"
  },
  {
    "name": "clap::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44f-1f3fc.png"
  },
  {
    "name": "clap::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44f-1f3fd.png"
  },
  {
    "name": "clap::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44f-1f3fe.png"
  },
  {
    "name": "clap::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44f-1f3ff.png"
  },
  {
    "name": "clap",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f44f.png"
  },
  {
    "name": "open_hands::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f450-1f3fb.png"
  },
  {
    "name": "open_hands::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f450-1f3fc.png"
  },
  {
    "name": "open_hands::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f450-1f3fd.png"
  },
  {
    "name": "open_hands::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f450-1f3fe.png"
  },
  {
    "name": "open_hands::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f450-1f3ff.png"
  },
  {
    "name": "open_hands",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f450.png"
  },
  {
    "name": "crown",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f451.png"
  },
  {
    "name": "womans_hat",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f452.png"
  },
  {
    "name": "eyeglasses",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f453.png"
  },
  {
    "name": "necktie",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f454.png"
  },
  {
    "name": "shirt",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f455.png"
  },
  {
    "name": "jeans",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f456.png"
  },
  {
    "name": "dress",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f457.png"
  },
  {
    "name": "kimono",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f458.png"
  },
  {
    "name": "bikini",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f459.png"
  },
  {
    "name": "womans_clothes",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f45a.png"
  },
  {
    "name": "purse",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f45b.png"
  },
  {
    "name": "handbag",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f45c.png"
  },
  {
    "name": "pouch",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f45d.png"
  },
  {
    "name": "mans_shoe",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f45e.png"
  },
  {
    "name": "athletic_shoe",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f45f.png"
  },
  {
    "name": "high_heel",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f460.png"
  },
  {
    "name": "sandal",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f461.png"
  },
  {
    "name": "boot",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f462.png"
  },
  {
    "name": "footprints",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f463.png"
  },
  {
    "name": "bust_in_silhouette",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f464.png"
  },
  {
    "name": "busts_in_silhouette",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f465.png"
  },
  {
    "name": "boy::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f466-1f3fb.png"
  },
  {
    "name": "boy::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f466-1f3fc.png"
  },
  {
    "name": "boy::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f466-1f3fd.png"
  },
  {
    "name": "boy::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f466-1f3fe.png"
  },
  {
    "name": "boy::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f466-1f3ff.png"
  },
  {
    "name": "boy",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f466.png"
  },
  {
    "name": "girl::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f467-1f3fb.png"
  },
  {
    "name": "girl::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f467-1f3fc.png"
  },
  {
    "name": "girl::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f467-1f3fd.png"
  },
  {
    "name": "girl::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f467-1f3fe.png"
  },
  {
    "name": "girl::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f467-1f3ff.png"
  },
  {
    "name": "girl",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f467.png"
  },
  {
    "name": "man::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f468-1f3fb.png"
  },
  {
    "name": "man::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f468-1f3fc.png"
  },
  {
    "name": "man::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f468-1f3fd.png"
  },
  {
    "name": "man::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f468-1f3fe.png"
  },
  {
    "name": "man::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f468-1f3ff.png"
  },
  {
    "name": "man",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f468.png"
  },
  {
    "name": "man-man-boy",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f468-200d-1f468-200d-1f466.png"
  },
  {
    "name": "man-man-boy-boy",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f468-200d-1f468-200d-1f466-200d-1f466.png"
  },
  {
    "name": "man-man-girl",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f468-200d-1f468-200d-1f467.png"
  },
  {
    "name": "man-man-girl-boy",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f468-200d-1f468-200d-1f467-200d-1f466.png"
  },
  {
    "name": "man-man-girl-girl",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f468-200d-1f468-200d-1f467-200d-1f467.png"
  },
  {
    "name": "man-woman-boy",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f468-200d-1f469-200d-1f466.png"
  },
  {
    "name": "man-woman-boy-boy",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f468-200d-1f469-200d-1f466-200d-1f466.png"
  },
  {
    "name": "man-woman-girl",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f468-200d-1f469-200d-1f467.png"
  },
  {
    "name": "man-woman-girl-boy",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f468-200d-1f469-200d-1f467-200d-1f466.png"
  },
  {
    "name": "man-woman-girl-girl",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f468-200d-1f469-200d-1f467-200d-1f467.png"
  },
  {
    "name": "man-heart-man",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f468-200d-2764-fe0f-200d-1f468.png"
  },
  {
    "name": "man-kiss-man",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f468-200d-2764-fe0f-200d-1f48b-200d-1f468.png"
  },
  {
    "name": "woman::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f469-1f3fb.png"
  },
  {
    "name": "woman::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f469-1f3fc.png"
  },
  {
    "name": "woman::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f469-1f3fd.png"
  },
  {
    "name": "woman::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f469-1f3fe.png"
  },
  {
    "name": "woman::skin-tone-",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f469-1f3ff.png"
  },
  {
    "name": "woman",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f469.png"
  },
  {
    "name": "woman-woman-boy",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f469-200d-1f469-200d-1f466.png"
  },
  {
    "name": "woman-woman-boy-boy",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f469-200d-1f469-200d-1f466-200d-1f466.png"
  },
  {
    "name": "woman-woman-girl",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f469-200d-1f469-200d-1f467.png"
  },
  {
    "name": "woman-woman-girl-boy",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f469-200d-1f469-200d-1f467-200d-1f466.png"
  },
  {
    "name": "woman-woman-girl-girl",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f469-200d-1f469-200d-1f467-200d-1f467.png"
  },
  {
    "name": "woman-heart-man",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f469-200d-2764-fe0f-200d-1f468.png"
  },
  {
    "name": "woman-heart-woman",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f469-200d-2764-fe0f-200d-1f469.png"
  },
  {
    "name": "woman-kiss-man",
    "url": null
  },
  {
    "name": "woman-kiss-woman",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f469-200d-2764-fe0f-200d-1f48b-200d-1f469.png"
  },
  {
    "name": "family",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f46a.png"
  },
  {
    "name": "couple",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f46b.png"
  },
  {
    "name": "two_men_holding_hands",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f46c.png"
  },
  {
    "name": "two_women_holding_hands",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f46d.png"
  },
  {
    "name": "cop::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f46e-1f3fb.png"
  },
  {
    "name": "cop::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f46e-1f3fc.png"
  },
  {
    "name": "cop::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f46e-1f3fd.png"
  },
  {
    "name": "cop::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f46e-1f3fe.png"
  },
  {
    "name": "cop::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f46e-1f3ff.png"
  },
  {
    "name": "cop",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f46e.png"
  },
  {
    "name": "dancers",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f46f.png"
  },
  {
    "name": "bride_with_veil::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f470-1f3fb.png"
  },
  {
    "name": "bride_with_veil::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f470-1f3fc.png"
  },
  {
    "name": "bride_with_veil::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f470-1f3fd.png"
  },
  {
    "name": "bride_with_veil::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f470-1f3fe.png"
  },
  {
    "name": "bride_with_veil::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f470-1f3ff.png"
  },
  {
    "name": "bride_with_veil",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f470.png"
  },
  {
    "name": "person_with_blond_hair::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f471-1f3fb.png"
  },
  {
    "name": "person_with_blond_hair::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f471-1f3fc.png"
  },
  {
    "name": "person_with_blond_hair::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f471-1f3fd.png"
  },
  {
    "name": "person_with_blond_hair::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f471-1f3fe.png"
  },
  {
    "name": "person_with_blond_hair::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f471-1f3ff.png"
  },
  {
    "name": "person_with_blond_hair",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f471.png"
  },
  {
    "name": "man_with_gua_pi_mao::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f472-1f3fb.png"
  },
  {
    "name": "man_with_gua_pi_mao::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f472-1f3fc.png"
  },
  {
    "name": "man_with_gua_pi_mao::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f472-1f3fd.png"
  },
  {
    "name": "man_with_gua_pi_mao::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f472-1f3fe.png"
  },
  {
    "name": "man_with_gua_pi_mao::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f472-1f3ff.png"
  },
  {
    "name": "man_with_gua_pi_mao",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f472.png"
  },
  {
    "name": "man_with_turban::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f473-1f3fb.png"
  },
  {
    "name": "man_with_turban::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f473-1f3fc.png"
  },
  {
    "name": "man_with_turban::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f473-1f3fd.png"
  },
  {
    "name": "man_with_turban::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f473-1f3fe.png"
  },
  {
    "name": "man_with_turban::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f473-1f3ff.png"
  },
  {
    "name": "man_with_turban",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f473.png"
  },
  {
    "name": "older_man::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f474-1f3fb.png"
  },
  {
    "name": "older_man::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f474-1f3fc.png"
  },
  {
    "name": "older_man::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f474-1f3fd.png"
  },
  {
    "name": "older_man::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f474-1f3fe.png"
  },
  {
    "name": "older_man::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f474-1f3ff.png"
  },
  {
    "name": "older_man",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f474.png"
  },
  {
    "name": "older_woman::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f475-1f3fb.png"
  },
  {
    "name": "older_woman::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f475-1f3fc.png"
  },
  {
    "name": "older_woman::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f475-1f3fd.png"
  },
  {
    "name": "older_woman::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f475-1f3fe.png"
  },
  {
    "name": "older_woman::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f475-1f3ff.png"
  },
  {
    "name": "older_woman",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f475.png"
  },
  {
    "name": "baby::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f476-1f3fb.png"
  },
  {
    "name": "baby::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f476-1f3fc.png"
  },
  {
    "name": "baby::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f476-1f3fd.png"
  },
  {
    "name": "baby::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f476-1f3fe.png"
  },
  {
    "name": "baby::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f476-1f3ff.png"
  },
  {
    "name": "baby",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f476.png"
  },
  {
    "name": "construction_worker::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f477-1f3fb.png"
  },
  {
    "name": "construction_worker::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f477-1f3fc.png"
  },
  {
    "name": "construction_worker::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f477-1f3fd.png"
  },
  {
    "name": "construction_worker::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f477-1f3fe.png"
  },
  {
    "name": "construction_worker::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f477-1f3ff.png"
  },
  {
    "name": "construction_worker",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f477.png"
  },
  {
    "name": "princess::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f478-1f3fb.png"
  },
  {
    "name": "princess::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f478-1f3fc.png"
  },
  {
    "name": "princess::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f478-1f3fd.png"
  },
  {
    "name": "princess::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f478-1f3fe.png"
  },
  {
    "name": "princess::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f478-1f3ff.png"
  },
  {
    "name": "princess",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f478.png"
  },
  {
    "name": "japanese_ogre",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f479.png"
  },
  {
    "name": "japanese_goblin",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f47a.png"
  },
  {
    "name": "ghost",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f47b.png"
  },
  {
    "name": "angel::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f47c-1f3fb.png"
  },
  {
    "name": "angel::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f47c-1f3fc.png"
  },
  {
    "name": "angel::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f47c-1f3fd.png"
  },
  {
    "name": "angel::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f47c-1f3fe.png"
  },
  {
    "name": "angel::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f47c-1f3ff.png"
  },
  {
    "name": "angel",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f47c.png"
  },
  {
    "name": "alien",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f47d.png"
  },
  {
    "name": "space_invader",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f47e.png"
  },
  {
    "name": "imp",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f47f.png"
  },
  {
    "name": "skull",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f480.png"
  },
  {
    "name": "information_desk_person::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f481-1f3fb.png"
  },
  {
    "name": "information_desk_person::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f481-1f3fc.png"
  },
  {
    "name": "information_desk_person::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f481-1f3fd.png"
  },
  {
    "name": "information_desk_person::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f481-1f3fe.png"
  },
  {
    "name": "information_desk_person::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f481-1f3ff.png"
  },
  {
    "name": "information_desk_person",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f481.png"
  },
  {
    "name": "guardsman::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f482-1f3fb.png"
  },
  {
    "name": "guardsman::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f482-1f3fc.png"
  },
  {
    "name": "guardsman::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f482-1f3fd.png"
  },
  {
    "name": "guardsman::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f482-1f3fe.png"
  },
  {
    "name": "guardsman::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f482-1f3ff.png"
  },
  {
    "name": "guardsman",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f482.png"
  },
  {
    "name": "dancer::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f483-1f3fb.png"
  },
  {
    "name": "dancer::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f483-1f3fc.png"
  },
  {
    "name": "dancer::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f483-1f3fd.png"
  },
  {
    "name": "dancer::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f483-1f3fe.png"
  },
  {
    "name": "dancer::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f483-1f3ff.png"
  },
  {
    "name": "dancer",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f483.png"
  },
  {
    "name": "lipstick",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f484.png"
  },
  {
    "name": "nail_care::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f485-1f3fb.png"
  },
  {
    "name": "nail_care::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f485-1f3fc.png"
  },
  {
    "name": "nail_care::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f485-1f3fd.png"
  },
  {
    "name": "nail_care::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f485-1f3fe.png"
  },
  {
    "name": "nail_care::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f485-1f3ff.png"
  },
  {
    "name": "nail_care",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f485.png"
  },
  {
    "name": "massage::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f486-1f3fb.png"
  },
  {
    "name": "massage::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f486-1f3fc.png"
  },
  {
    "name": "massage::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f486-1f3fd.png"
  },
  {
    "name": "massage::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f486-1f3fe.png"
  },
  {
    "name": "massage::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f486-1f3ff.png"
  },
  {
    "name": "massage",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f486.png"
  },
  {
    "name": "haircut::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f487-1f3fb.png"
  },
  {
    "name": "haircut::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f487-1f3fc.png"
  },
  {
    "name": "haircut::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f487-1f3fd.png"
  },
  {
    "name": "haircut::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f487-1f3fe.png"
  },
  {
    "name": "haircut::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f487-1f3ff.png"
  },
  {
    "name": "haircut",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f487.png"
  },
  {
    "name": "barber",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f488.png"
  },
  {
    "name": "syringe",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f489.png"
  },
  {
    "name": "pill",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f48a.png"
  },
  {
    "name": "kiss",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f48b.png"
  },
  {
    "name": "love_letter",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f48c.png"
  },
  {
    "name": "ring",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f48d.png"
  },
  {
    "name": "gem",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f48e.png"
  },
  {
    "name": "couplekiss",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f48f.png"
  },
  {
    "name": "bouquet",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f490.png"
  },
  {
    "name": "couple_with_heart",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f491.png"
  },
  {
    "name": "wedding",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f492.png"
  },
  {
    "name": "heartbeat",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f493.png"
  },
  {
    "name": "broken_heart",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f494.png"
  },
  {
    "name": "two_hearts",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f495.png"
  },
  {
    "name": "sparkling_heart",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f496.png"
  },
  {
    "name": "heartpulse",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f497.png"
  },
  {
    "name": "cupid",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f498.png"
  },
  {
    "name": "blue_heart",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f499.png"
  },
  {
    "name": "green_heart",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f49a.png"
  },
  {
    "name": "yellow_heart",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f49b.png"
  },
  {
    "name": "purple_heart",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f49c.png"
  },
  {
    "name": "gift_heart",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f49d.png"
  },
  {
    "name": "revolving_hearts",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f49e.png"
  },
  {
    "name": "heart_decoration",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f49f.png"
  },
  {
    "name": "diamond_shape_with_a_dot_inside",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4a0.png"
  },
  {
    "name": "bulb",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4a1.png"
  },
  {
    "name": "anger",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4a2.png"
  },
  {
    "name": "bomb",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4a3.png"
  },
  {
    "name": "zzz",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4a4.png"
  },
  {
    "name": "boom",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4a5.png"
  },
  {
    "name": "sweat_drops",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4a6.png"
  },
  {
    "name": "droplet",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4a7.png"
  },
  {
    "name": "dash",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4a8.png"
  },
  {
    "name": "hankey",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4a9.png"
  },
  {
    "name": "muscle::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4aa-1f3fb.png"
  },
  {
    "name": "muscle::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4aa-1f3fc.png"
  },
  {
    "name": "muscle::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4aa-1f3fd.png"
  },
  {
    "name": "muscle::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4aa-1f3fe.png"
  },
  {
    "name": "muscle::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4aa-1f3ff.png"
  },
  {
    "name": "muscle",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4aa.png"
  },
  {
    "name": "dizzy",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4ab.png"
  },
  {
    "name": "speech_balloon",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4ac.png"
  },
  {
    "name": "thought_balloon",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4ad.png"
  },
  {
    "name": "white_flower",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4ae.png"
  },
  {
    "name": "100",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4af.png"
  },
  {
    "name": "moneybag",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4b0.png"
  },
  {
    "name": "currency_exchange",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4b1.png"
  },
  {
    "name": "heavy_dollar_sign",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4b2.png"
  },
  {
    "name": "credit_card",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4b3.png"
  },
  {
    "name": "yen",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4b4.png"
  },
  {
    "name": "dollar",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4b5.png"
  },
  {
    "name": "euro",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4b6.png"
  },
  {
    "name": "pound",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4b7.png"
  },
  {
    "name": "money_with_wings",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4b8.png"
  },
  {
    "name": "chart",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4b9.png"
  },
  {
    "name": "seat",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4ba.png"
  },
  {
    "name": "computer",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4bb.png"
  },
  {
    "name": "briefcase",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4bc.png"
  },
  {
    "name": "minidisc",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4bd.png"
  },
  {
    "name": "floppy_disk",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4be.png"
  },
  {
    "name": "cd",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4bf.png"
  },
  {
    "name": "dvd",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4c0.png"
  },
  {
    "name": "file_folder",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4c1.png"
  },
  {
    "name": "open_file_folder",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4c2.png"
  },
  {
    "name": "page_with_curl",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4c3.png"
  },
  {
    "name": "page_facing_up",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4c4.png"
  },
  {
    "name": "date",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4c5.png"
  },
  {
    "name": "calendar",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4c6.png"
  },
  {
    "name": "card_index",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4c7.png"
  },
  {
    "name": "chart_with_upwards_trend",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4c8.png"
  },
  {
    "name": "chart_with_downwards_trend",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4c9.png"
  },
  {
    "name": "bar_chart",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4ca.png"
  },
  {
    "name": "clipboard",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4cb.png"
  },
  {
    "name": "pushpin",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4cc.png"
  },
  {
    "name": "round_pushpin",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4cd.png"
  },
  {
    "name": "paperclip",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4ce.png"
  },
  {
    "name": "straight_ruler",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4cf.png"
  },
  {
    "name": "triangular_ruler",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4d0.png"
  },
  {
    "name": "bookmark_tabs",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4d1.png"
  },
  {
    "name": "ledger",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4d2.png"
  },
  {
    "name": "notebook",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4d3.png"
  },
  {
    "name": "notebook_with_decorative_cover",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4d4.png"
  },
  {
    "name": "closed_book",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4d5.png"
  },
  {
    "name": "book",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4d6.png"
  },
  {
    "name": "green_book",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4d7.png"
  },
  {
    "name": "blue_book",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4d8.png"
  },
  {
    "name": "orange_book",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4d9.png"
  },
  {
    "name": "books",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4da.png"
  },
  {
    "name": "name_badge",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4db.png"
  },
  {
    "name": "scroll",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4dc.png"
  },
  {
    "name": "memo",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4dd.png"
  },
  {
    "name": "telephone_receiver",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4de.png"
  },
  {
    "name": "pager",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4df.png"
  },
  {
    "name": "fax",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4e0.png"
  },
  {
    "name": "satellite_antenna",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4e1.png"
  },
  {
    "name": "loudspeaker",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4e2.png"
  },
  {
    "name": "mega",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4e3.png"
  },
  {
    "name": "outbox_tray",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4e4.png"
  },
  {
    "name": "inbox_tray",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4e5.png"
  },
  {
    "name": "package",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4e6.png"
  },
  {
    "name": "e-mail",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4e7.png"
  },
  {
    "name": "incoming_envelope",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4e8.png"
  },
  {
    "name": "envelope_with_arrow",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4e9.png"
  },
  {
    "name": "mailbox_closed",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4ea.png"
  },
  {
    "name": "mailbox",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4eb.png"
  },
  {
    "name": "mailbox_with_mail",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4ec.png"
  },
  {
    "name": "mailbox_with_no_mail",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4ed.png"
  },
  {
    "name": "postbox",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4ee.png"
  },
  {
    "name": "postal_horn",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4ef.png"
  },
  {
    "name": "newspaper",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4f0.png"
  },
  {
    "name": "iphone",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4f1.png"
  },
  {
    "name": "calling",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4f2.png"
  },
  {
    "name": "vibration_mode",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4f3.png"
  },
  {
    "name": "mobile_phone_off",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4f4.png"
  },
  {
    "name": "no_mobile_phones",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4f5.png"
  },
  {
    "name": "signal_strength",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4f6.png"
  },
  {
    "name": "camera",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4f7.png"
  },
  {
    "name": "camera_with_flash",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4f8.png"
  },
  {
    "name": "video_camera",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4f9.png"
  },
  {
    "name": "tv",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4fa.png"
  },
  {
    "name": "radio",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4fb.png"
  },
  {
    "name": "vhs",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4fc.png"
  },
  {
    "name": "film_projector",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4fd.png"
  },
  {
    "name": "prayer_beads",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f4ff.png"
  },
  {
    "name": "twisted_rightwards_arrows",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f500.png"
  },
  {
    "name": "repeat",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f501.png"
  },
  {
    "name": "repeat_one",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f502.png"
  },
  {
    "name": "arrows_clockwise",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f503.png"
  },
  {
    "name": "arrows_counterclockwise",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f504.png"
  },
  {
    "name": "low_brightness",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f505.png"
  },
  {
    "name": "high_brightness",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f506.png"
  },
  {
    "name": "mute",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f507.png"
  },
  {
    "name": "speaker",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f508.png"
  },
  {
    "name": "sound",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f509.png"
  },
  {
    "name": "loud_sound",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f50a.png"
  },
  {
    "name": "battery",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f50b.png"
  },
  {
    "name": "electric_plug",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f50c.png"
  },
  {
    "name": "mag",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f50d.png"
  },
  {
    "name": "mag_right",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f50e.png"
  },
  {
    "name": "lock_with_ink_pen",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f50f.png"
  },
  {
    "name": "closed_lock_with_key",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f510.png"
  },
  {
    "name": "key",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f511.png"
  },
  {
    "name": "lock",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f512.png"
  },
  {
    "name": "unlock",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f513.png"
  },
  {
    "name": "bell",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f514.png"
  },
  {
    "name": "no_bell",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f515.png"
  },
  {
    "name": "bookmark",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f516.png"
  },
  {
    "name": "link",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f517.png"
  },
  {
    "name": "radio_button",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f518.png"
  },
  {
    "name": "back",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f519.png"
  },
  {
    "name": "end",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f51a.png"
  },
  {
    "name": "on",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f51b.png"
  },
  {
    "name": "soon",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f51c.png"
  },
  {
    "name": "top",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f51d.png"
  },
  {
    "name": "underage",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f51e.png"
  },
  {
    "name": "keycap_ten",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f51f.png"
  },
  {
    "name": "capital_abcd",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f520.png"
  },
  {
    "name": "abcd",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f521.png"
  },
  {
    "name": "1234",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f522.png"
  },
  {
    "name": "symbols",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f523.png"
  },
  {
    "name": "abc",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f524.png"
  },
  {
    "name": "fire",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f525.png"
  },
  {
    "name": "flashlight",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f526.png"
  },
  {
    "name": "wrench",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f527.png"
  },
  {
    "name": "hammer",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f528.png"
  },
  {
    "name": "nut_and_bolt",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f529.png"
  },
  {
    "name": "hocho",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f52a.png"
  },
  {
    "name": "gun",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f52b.png"
  },
  {
    "name": "microscope",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f52c.png"
  },
  {
    "name": "telescope",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f52d.png"
  },
  {
    "name": "crystal_ball",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f52e.png"
  },
  {
    "name": "six_pointed_star",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f52f.png"
  },
  {
    "name": "beginner",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f530.png"
  },
  {
    "name": "trident",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f531.png"
  },
  {
    "name": "black_square_button",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f532.png"
  },
  {
    "name": "white_square_button",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f533.png"
  },
  {
    "name": "red_circle",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f534.png"
  },
  {
    "name": "large_blue_circle",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f535.png"
  },
  {
    "name": "large_orange_diamond",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f536.png"
  },
  {
    "name": "large_blue_diamond",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f537.png"
  },
  {
    "name": "small_orange_diamond",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f538.png"
  },
  {
    "name": "small_blue_diamond",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f539.png"
  },
  {
    "name": "small_red_triangle",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f53a.png"
  },
  {
    "name": "small_red_triangle_down",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f53b.png"
  },
  {
    "name": "arrow_up_small",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f53c.png"
  },
  {
    "name": "arrow_down_small",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f53d.png"
  },
  {
    "name": "om_symbol",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f549.png"
  },
  {
    "name": "dove_of_peace",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f54a.png"
  },
  {
    "name": "kaaba",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f54b.png"
  },
  {
    "name": "mosque",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f54c.png"
  },
  {
    "name": "synagogue",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f54d.png"
  },
  {
    "name": "menorah_with_nine_branches",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f54e.png"
  },
  {
    "name": "clock1",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f550.png"
  },
  {
    "name": "clock2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f551.png"
  },
  {
    "name": "clock3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f552.png"
  },
  {
    "name": "clock4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f553.png"
  },
  {
    "name": "clock5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f554.png"
  },
  {
    "name": "clock6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f555.png"
  },
  {
    "name": "clock7",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f556.png"
  },
  {
    "name": "clock8",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f557.png"
  },
  {
    "name": "clock9",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f558.png"
  },
  {
    "name": "clock10",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f559.png"
  },
  {
    "name": "clock11",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f55a.png"
  },
  {
    "name": "clock12",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f55b.png"
  },
  {
    "name": "clock130",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f55c.png"
  },
  {
    "name": "clock230",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f55d.png"
  },
  {
    "name": "clock330",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f55e.png"
  },
  {
    "name": "clock430",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f55f.png"
  },
  {
    "name": "clock530",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f560.png"
  },
  {
    "name": "clock630",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f561.png"
  },
  {
    "name": "clock730",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f562.png"
  },
  {
    "name": "clock830",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f563.png"
  },
  {
    "name": "clock930",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f564.png"
  },
  {
    "name": "clock1030",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f565.png"
  },
  {
    "name": "clock1130",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f566.png"
  },
  {
    "name": "clock1230",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f567.png"
  },
  {
    "name": "candle",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f56f.png"
  },
  {
    "name": "mantelpiece_clock",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f570.png"
  },
  {
    "name": "hole",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f573.png"
  },
  {
    "name": "man_in_business_suit_levitating",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f574.png"
  },
  {
    "name": "sleuth_or_spy::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f575-1f3fb.png"
  },
  {
    "name": "sleuth_or_spy::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f575-1f3fc.png"
  },
  {
    "name": "sleuth_or_spy::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f575-1f3fd.png"
  },
  {
    "name": "sleuth_or_spy::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f575-1f3fe.png"
  },
  {
    "name": "sleuth_or_spy::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f575-1f3ff.png"
  },
  {
    "name": "sleuth_or_spy",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f575.png"
  },
  {
    "name": "dark_sunglasses",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f576.png"
  },
  {
    "name": "spider",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f577.png"
  },
  {
    "name": "spider_web",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f578.png"
  },
  {
    "name": "joystick",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f579.png"
  },
  {
    "name": "linked_paperclips",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f587.png"
  },
  {
    "name": "lower_left_ballpoint_pen",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f58a.png"
  },
  {
    "name": "lower_left_fountain_pen",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f58b.png"
  },
  {
    "name": "lower_left_paintbrush",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f58c.png"
  },
  {
    "name": "lower_left_crayon",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f58d.png"
  },
  {
    "name": "raised_hand_with_fingers_splayed::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f590-1f3fb.png"
  },
  {
    "name": "raised_hand_with_fingers_splayed::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f590-1f3fc.png"
  },
  {
    "name": "raised_hand_with_fingers_splayed::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f590-1f3fd.png"
  },
  {
    "name": "raised_hand_with_fingers_splayed::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f590-1f3fe.png"
  },
  {
    "name": "raised_hand_with_fingers_splayed::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f590-1f3ff.png"
  },
  {
    "name": "raised_hand_with_fingers_splayed",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f590.png"
  },
  {
    "name": "middle_finger::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f595-1f3fb.png"
  },
  {
    "name": "middle_finger::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f595-1f3fc.png"
  },
  {
    "name": "middle_finger::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f595-1f3fd.png"
  },
  {
    "name": "middle_finger::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f595-1f3fe.png"
  },
  {
    "name": "middle_finger::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f595-1f3ff.png"
  },
  {
    "name": "middle_finger",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f595.png"
  },
  {
    "name": "spock-hand::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f596-1f3fb.png"
  },
  {
    "name": "spock-hand::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f596-1f3fc.png"
  },
  {
    "name": "spock-hand::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f596-1f3fd.png"
  },
  {
    "name": "spock-hand::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f596-1f3fe.png"
  },
  {
    "name": "spock-hand::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f596-1f3ff.png"
  },
  {
    "name": "spock-hand",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f596.png"
  },
  {
    "name": "desktop_computer",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f5a5.png"
  },
  {
    "name": "printer",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f5a8.png"
  },
  {
    "name": "three_button_mouse",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f5b1.png"
  },
  {
    "name": "trackball",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f5b2.png"
  },
  {
    "name": "frame_with_picture",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f5bc.png"
  },
  {
    "name": "card_index_dividers",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f5c2.png"
  },
  {
    "name": "card_file_box",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f5c3.png"
  },
  {
    "name": "file_cabinet",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f5c4.png"
  },
  {
    "name": "wastebasket",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f5d1.png"
  },
  {
    "name": "spiral_note_pad",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f5d2.png"
  },
  {
    "name": "spiral_calendar_pad",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f5d3.png"
  },
  {
    "name": "compression",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f5dc.png"
  },
  {
    "name": "old_key",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f5dd.png"
  },
  {
    "name": "rolled_up_newspaper",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f5de.png"
  },
  {
    "name": "dagger_knife",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f5e1.png"
  },
  {
    "name": "speaking_head_in_silhouette",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f5e3.png"
  },
  {
    "name": "left_speech_bubble",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f5e8.png"
  },
  {
    "name": "right_anger_bubble",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f5ef.png"
  },
  {
    "name": "ballot_box_with_ballot",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f5f3.png"
  },
  {
    "name": "world_map",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f5fa.png"
  },
  {
    "name": "mount_fuji",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f5fb.png"
  },
  {
    "name": "tokyo_tower",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f5fc.png"
  },
  {
    "name": "statue_of_liberty",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f5fd.png"
  },
  {
    "name": "japan",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f5fe.png"
  },
  {
    "name": "moyai",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f5ff.png"
  },
  {
    "name": "grinning",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f600.png"
  },
  {
    "name": "grin",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f601.png"
  },
  {
    "name": "joy",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f602.png"
  },
  {
    "name": "smiley",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f603.png"
  },
  {
    "name": "smile",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f604.png"
  },
  {
    "name": "sweat_smile",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f605.png"
  },
  {
    "name": "laughing",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f606.png"
  },
  {
    "name": "innocent",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f607.png"
  },
  {
    "name": "smiling_imp",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f608.png"
  },
  {
    "name": "wink",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f609.png"
  },
  {
    "name": "blush",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f60a.png"
  },
  {
    "name": "yum",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f60b.png"
  },
  {
    "name": "relieved",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f60c.png"
  },
  {
    "name": "heart_eyes",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f60d.png"
  },
  {
    "name": "sunglasses",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f60e.png"
  },
  {
    "name": "smirk",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f60f.png"
  },
  {
    "name": "neutral_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f610.png"
  },
  {
    "name": "expressionless",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f611.png"
  },
  {
    "name": "unamused",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f612.png"
  },
  {
    "name": "sweat",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f613.png"
  },
  {
    "name": "pensive",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f614.png"
  },
  {
    "name": "confused",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f615.png"
  },
  {
    "name": "confounded",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f616.png"
  },
  {
    "name": "kissing",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f617.png"
  },
  {
    "name": "kissing_heart",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f618.png"
  },
  {
    "name": "kissing_smiling_eyes",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f619.png"
  },
  {
    "name": "kissing_closed_eyes",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f61a.png"
  },
  {
    "name": "stuck_out_tongue",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f61b.png"
  },
  {
    "name": "stuck_out_tongue_winking_eye",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f61c.png"
  },
  {
    "name": "stuck_out_tongue_closed_eyes",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f61d.png"
  },
  {
    "name": "disappointed",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f61e.png"
  },
  {
    "name": "worried",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f61f.png"
  },
  {
    "name": "angry",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f620.png"
  },
  {
    "name": "rage",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f621.png"
  },
  {
    "name": "cry",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f622.png"
  },
  {
    "name": "persevere",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f623.png"
  },
  {
    "name": "triumph",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f624.png"
  },
  {
    "name": "disappointed_relieved",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f625.png"
  },
  {
    "name": "frowning",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f626.png"
  },
  {
    "name": "anguished",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f627.png"
  },
  {
    "name": "fearful",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f628.png"
  },
  {
    "name": "weary",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f629.png"
  },
  {
    "name": "sleepy",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f62a.png"
  },
  {
    "name": "tired_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f62b.png"
  },
  {
    "name": "grimacing",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f62c.png"
  },
  {
    "name": "sob",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f62d.png"
  },
  {
    "name": "open_mouth",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f62e.png"
  },
  {
    "name": "hushed",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f62f.png"
  },
  {
    "name": "cold_sweat",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f630.png"
  },
  {
    "name": "scream",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f631.png"
  },
  {
    "name": "astonished",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f632.png"
  },
  {
    "name": "flushed",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f633.png"
  },
  {
    "name": "sleeping",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f634.png"
  },
  {
    "name": "dizzy_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f635.png"
  },
  {
    "name": "no_mouth",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f636.png"
  },
  {
    "name": "mask",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f637.png"
  },
  {
    "name": "smile_cat",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f638.png"
  },
  {
    "name": "joy_cat",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f639.png"
  },
  {
    "name": "smiley_cat",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f63a.png"
  },
  {
    "name": "heart_eyes_cat",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f63b.png"
  },
  {
    "name": "smirk_cat",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f63c.png"
  },
  {
    "name": "kissing_cat",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f63d.png"
  },
  {
    "name": "pouting_cat",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f63e.png"
  },
  {
    "name": "crying_cat_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f63f.png"
  },
  {
    "name": "scream_cat",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f640.png"
  },
  {
    "name": "slightly_frowning_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f641.png"
  },
  {
    "name": "slightly_smiling_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f642.png"
  },
  {
    "name": "upside_down_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f643.png"
  },
  {
    "name": "face_with_rolling_eyes",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f644.png"
  },
  {
    "name": "no_good::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f645-1f3fb.png"
  },
  {
    "name": "no_good::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f645-1f3fc.png"
  },
  {
    "name": "no_good::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f645-1f3fd.png"
  },
  {
    "name": "no_good::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f645-1f3fe.png"
  },
  {
    "name": "no_good::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f645-1f3ff.png"
  },
  {
    "name": "no_good",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f645.png"
  },
  {
    "name": "ok_woman::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f646-1f3fb.png"
  },
  {
    "name": "ok_woman::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f646-1f3fc.png"
  },
  {
    "name": "ok_woman::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f646-1f3fd.png"
  },
  {
    "name": "ok_woman::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f646-1f3fe.png"
  },
  {
    "name": "ok_woman::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f646-1f3ff.png"
  },
  {
    "name": "ok_woman",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f646.png"
  },
  {
    "name": "bow::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f647-1f3fb.png"
  },
  {
    "name": "bow::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f647-1f3fc.png"
  },
  {
    "name": "bow::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f647-1f3fd.png"
  },
  {
    "name": "bow::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f647-1f3fe.png"
  },
  {
    "name": "bow::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f647-1f3ff.png"
  },
  {
    "name": "bow",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f647.png"
  },
  {
    "name": "see_no_evil",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f648.png"
  },
  {
    "name": "hear_no_evil",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f649.png"
  },
  {
    "name": "speak_no_evil",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64a.png"
  },
  {
    "name": "raising_hand::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64b-1f3fb.png"
  },
  {
    "name": "raising_hand::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64b-1f3fc.png"
  },
  {
    "name": "raising_hand::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64b-1f3fd.png"
  },
  {
    "name": "raising_hand::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64b-1f3fe.png"
  },
  {
    "name": "raising_hand::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64b-1f3ff.png"
  },
  {
    "name": "raising_hand",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64b.png"
  },
  {
    "name": "raised_hands::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64c-1f3fb.png"
  },
  {
    "name": "raised_hands::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64c-1f3fc.png"
  },
  {
    "name": "raised_hands::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64c-1f3fd.png"
  },
  {
    "name": "raised_hands::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64c-1f3fe.png"
  },
  {
    "name": "raised_hands::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64c-1f3ff.png"
  },
  {
    "name": "raised_hands",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64c.png"
  },
  {
    "name": "person_frowning::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64d-1f3fb.png"
  },
  {
    "name": "person_frowning::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64d-1f3fc.png"
  },
  {
    "name": "person_frowning::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64d-1f3fd.png"
  },
  {
    "name": "person_frowning::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64d-1f3fe.png"
  },
  {
    "name": "person_frowning::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64d-1f3ff.png"
  },
  {
    "name": "person_frowning",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64d.png"
  },
  {
    "name": "person_with_pouting_face::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64e-1f3fb.png"
  },
  {
    "name": "person_with_pouting_face::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64e-1f3fc.png"
  },
  {
    "name": "person_with_pouting_face::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64e-1f3fd.png"
  },
  {
    "name": "person_with_pouting_face::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64e-1f3fe.png"
  },
  {
    "name": "person_with_pouting_face::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64e-1f3ff.png"
  },
  {
    "name": "person_with_pouting_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64e.png"
  },
  {
    "name": "pray::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64f-1f3fb.png"
  },
  {
    "name": "pray::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64f-1f3fc.png"
  },
  {
    "name": "pray::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64f-1f3fd.png"
  },
  {
    "name": "pray::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64f-1f3fe.png"
  },
  {
    "name": "pray::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64f-1f3ff.png"
  },
  {
    "name": "pray",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f64f.png"
  },
  {
    "name": "rocket",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f680.png"
  },
  {
    "name": "helicopter",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f681.png"
  },
  {
    "name": "steam_locomotive",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f682.png"
  },
  {
    "name": "railway_car",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f683.png"
  },
  {
    "name": "bullettrain_side",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f684.png"
  },
  {
    "name": "bullettrain_front",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f685.png"
  },
  {
    "name": "train2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f686.png"
  },
  {
    "name": "metro",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f687.png"
  },
  {
    "name": "light_rail",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f688.png"
  },
  {
    "name": "station",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f689.png"
  },
  {
    "name": "tram",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f68a.png"
  },
  {
    "name": "train",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f68b.png"
  },
  {
    "name": "bus",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f68c.png"
  },
  {
    "name": "oncoming_bus",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f68d.png"
  },
  {
    "name": "trolleybus",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f68e.png"
  },
  {
    "name": "busstop",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f68f.png"
  },
  {
    "name": "minibus",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f690.png"
  },
  {
    "name": "ambulance",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f691.png"
  },
  {
    "name": "fire_engine",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f692.png"
  },
  {
    "name": "police_car",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f693.png"
  },
  {
    "name": "oncoming_police_car",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f694.png"
  },
  {
    "name": "taxi",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f695.png"
  },
  {
    "name": "oncoming_taxi",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f696.png"
  },
  {
    "name": "car",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f697.png"
  },
  {
    "name": "oncoming_automobile",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f698.png"
  },
  {
    "name": "blue_car",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f699.png"
  },
  {
    "name": "truck",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f69a.png"
  },
  {
    "name": "articulated_lorry",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f69b.png"
  },
  {
    "name": "tractor",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f69c.png"
  },
  {
    "name": "monorail",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f69d.png"
  },
  {
    "name": "mountain_railway",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f69e.png"
  },
  {
    "name": "suspension_railway",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f69f.png"
  },
  {
    "name": "mountain_cableway",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6a0.png"
  },
  {
    "name": "aerial_tramway",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6a1.png"
  },
  {
    "name": "ship",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6a2.png"
  },
  {
    "name": "rowboat::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6a3-1f3fb.png"
  },
  {
    "name": "rowboat::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6a3-1f3fc.png"
  },
  {
    "name": "rowboat::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6a3-1f3fd.png"
  },
  {
    "name": "rowboat::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6a3-1f3fe.png"
  },
  {
    "name": "rowboat::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6a3-1f3ff.png"
  },
  {
    "name": "rowboat",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6a3.png"
  },
  {
    "name": "speedboat",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6a4.png"
  },
  {
    "name": "traffic_light",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6a5.png"
  },
  {
    "name": "vertical_traffic_light",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6a6.png"
  },
  {
    "name": "construction",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6a7.png"
  },
  {
    "name": "rotating_light",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6a8.png"
  },
  {
    "name": "triangular_flag_on_post",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6a9.png"
  },
  {
    "name": "door",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6aa.png"
  },
  {
    "name": "no_entry_sign",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6ab.png"
  },
  {
    "name": "smoking",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6ac.png"
  },
  {
    "name": "no_smoking",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6ad.png"
  },
  {
    "name": "put_litter_in_its_place",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6ae.png"
  },
  {
    "name": "do_not_litter",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6af.png"
  },
  {
    "name": "potable_water",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6b0.png"
  },
  {
    "name": "non-potable_water",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6b1.png"
  },
  {
    "name": "bike",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6b2.png"
  },
  {
    "name": "no_bicycles",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6b3.png"
  },
  {
    "name": "bicyclist::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6b4-1f3fb.png"
  },
  {
    "name": "bicyclist::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6b4-1f3fc.png"
  },
  {
    "name": "bicyclist::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6b4-1f3fd.png"
  },
  {
    "name": "bicyclist::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6b4-1f3fe.png"
  },
  {
    "name": "bicyclist::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6b4-1f3ff.png"
  },
  {
    "name": "bicyclist",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6b4.png"
  },
  {
    "name": "mountain_bicyclist::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6b5-1f3fb.png"
  },
  {
    "name": "mountain_bicyclist::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6b5-1f3fc.png"
  },
  {
    "name": "mountain_bicyclist::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6b5-1f3fd.png"
  },
  {
    "name": "mountain_bicyclist::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6b5-1f3fe.png"
  },
  {
    "name": "mountain_bicyclist::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6b5-1f3ff.png"
  },
  {
    "name": "mountain_bicyclist",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6b5.png"
  },
  {
    "name": "walking::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6b6-1f3fb.png"
  },
  {
    "name": "walking::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6b6-1f3fc.png"
  },
  {
    "name": "walking::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6b6-1f3fd.png"
  },
  {
    "name": "walking::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6b6-1f3fe.png"
  },
  {
    "name": "walking::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6b6-1f3ff.png"
  },
  {
    "name": "walking",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6b6.png"
  },
  {
    "name": "no_pedestrians",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6b7.png"
  },
  {
    "name": "children_crossing",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6b8.png"
  },
  {
    "name": "mens",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6b9.png"
  },
  {
    "name": "womens",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6ba.png"
  },
  {
    "name": "restroom",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6bb.png"
  },
  {
    "name": "baby_symbol",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6bc.png"
  },
  {
    "name": "toilet",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6bd.png"
  },
  {
    "name": "wc",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6be.png"
  },
  {
    "name": "shower",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6bf.png"
  },
  {
    "name": "bath::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6c0-1f3fb.png"
  },
  {
    "name": "bath::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6c0-1f3fc.png"
  },
  {
    "name": "bath::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6c0-1f3fd.png"
  },
  {
    "name": "bath::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6c0-1f3fe.png"
  },
  {
    "name": "bath::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6c0-1f3ff.png"
  },
  {
    "name": "bath",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6c0.png"
  },
  {
    "name": "bathtub",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6c1.png"
  },
  {
    "name": "passport_control",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6c2.png"
  },
  {
    "name": "customs",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6c3.png"
  },
  {
    "name": "baggage_claim",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6c4.png"
  },
  {
    "name": "left_luggage",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6c5.png"
  },
  {
    "name": "couch_and_lamp",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6cb.png"
  },
  {
    "name": "sleeping_accommodation",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6cc.png"
  },
  {
    "name": "shopping_bags",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6cd.png"
  },
  {
    "name": "bellhop_bell",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6ce.png"
  },
  {
    "name": "bed",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6cf.png"
  },
  {
    "name": "place_of_worship",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6d0.png"
  },
  {
    "name": "hammer_and_wrench",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6e0.png"
  },
  {
    "name": "shield",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6e1.png"
  },
  {
    "name": "oil_drum",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6e2.png"
  },
  {
    "name": "motorway",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6e3.png"
  },
  {
    "name": "railway_track",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6e4.png"
  },
  {
    "name": "motor_boat",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6e5.png"
  },
  {
    "name": "small_airplane",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6e9.png"
  },
  {
    "name": "airplane_departure",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6eb.png"
  },
  {
    "name": "airplane_arriving",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6ec.png"
  },
  {
    "name": "satellite",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6f0.png"
  },
  {
    "name": "passenger_ship",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f6f3.png"
  },
  {
    "name": "zipper_mouth_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f910.png"
  },
  {
    "name": "money_mouth_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f911.png"
  },
  {
    "name": "face_with_thermometer",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f912.png"
  },
  {
    "name": "nerd_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f913.png"
  },
  {
    "name": "thinking_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f914.png"
  },
  {
    "name": "face_with_head_bandage",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f915.png"
  },
  {
    "name": "robot_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f916.png"
  },
  {
    "name": "hugging_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f917.png"
  },
  {
    "name": "the_horns::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f918-1f3fb.png"
  },
  {
    "name": "the_horns::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f918-1f3fc.png"
  },
  {
    "name": "the_horns::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f918-1f3fd.png"
  },
  {
    "name": "the_horns::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f918-1f3fe.png"
  },
  {
    "name": "the_horns::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f918-1f3ff.png"
  },
  {
    "name": "the_horns",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f918.png"
  },
  {
    "name": "crab",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f980.png"
  },
  {
    "name": "lion_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f981.png"
  },
  {
    "name": "scorpion",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f982.png"
  },
  {
    "name": "turkey",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f983.png"
  },
  {
    "name": "unicorn_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f984.png"
  },
  {
    "name": "cheese_wedge",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/1f9c0.png"
  },
  {
    "name": "double_exclamation_mark",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/203c.png"
  },
  {
    "name": "interrobang",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2049.png"
  },
  {
    "name": "trade_mark",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2122.png"
  },
  {
    "name": "information_source",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2139.png"
  },
  {
    "name": "left_right_arrow",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2194.png"
  },
  {
    "name": "arrow_up_down",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2195.png"
  },
  {
    "name": "arrow_upper_left",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2196.png"
  },
  {
    "name": "arrow_upper_right",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2197.png"
  },
  {
    "name": "arrow_lower_right",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2198.png"
  },
  {
    "name": "arrow_lower_left",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2199.png"
  },
  {
    "name": "leftwards_arrow_with_hook",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/21a9.png"
  },
  {
    "name": "arrow_right_hook",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/21aa.png"
  },
  {
    "name": "hash",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/23-20e3.png"
  },
  {
    "name": "watch",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/231a.png"
  },
  {
    "name": "hourglass",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/231b.png"
  },
  {
    "name": "keyboard",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2328.png"
  },
  {
    "name": "eject",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/23cf.png"
  },
  {
    "name": "fast_forward",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/23e9.png"
  },
  {
    "name": "rewind",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/23ea.png"
  },
  {
    "name": "arrow_double_up",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/23eb.png"
  },
  {
    "name": "arrow_double_down",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/23ec.png"
  },
  {
    "name": "black_right_pointing_double_triangle_with_vertical_bar",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/23ed.png"
  },
  {
    "name": "black_left_pointing_double_triangle_with_vertical_bar",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/23ee.png"
  },
  {
    "name": "black_right_pointing_triangle_with_double_vertical_bar",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/23ef.png"
  },
  {
    "name": "alarm_clock",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/23f0.png"
  },
  {
    "name": "stopwatch",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/23f1.png"
  },
  {
    "name": "timer_clock",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/23f2.png"
  },
  {
    "name": "hourglass_flowing_sand",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/23f3.png"
  },
  {
    "name": "double_vertical_bar",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/23f8.png"
  },
  {
    "name": "black_square_for_stop",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/23f9.png"
  },
  {
    "name": "black_circle_for_record",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/23fa.png"
  },
  {
    "name": "m_circled",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/24c2.png"
  },
  {
    "name": "black_small_square",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/25aa.png"
  },
  {
    "name": "white_small_square",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/25ab.png"
  },
  {
    "name": "arrow_forward",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/25b6.png"
  },
  {
    "name": "arrow_backward",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/25c0.png"
  },
  {
    "name": "white_medium_square",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/25fb.png"
  },
  {
    "name": "black_medium_square",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/25fc.png"
  },
  {
    "name": "white_medium_small_square",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/25fd.png"
  },
  {
    "name": "black_medium_small_square",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/25fe.png"
  },
  {
    "name": "sunny",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2600.png"
  },
  {
    "name": "cloud",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2601.png"
  },
  {
    "name": "umbrella",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2602.png"
  },
  {
    "name": "showman",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2603.png"
  },
  {
    "name": "comet",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2604.png"
  },
  {
    "name": "phone",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/260e.png"
  },
  {
    "name": "ballot_box_with_check",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2611.png"
  },
  {
    "name": "umbrella_with_rain_drops",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2614.png"
  },
  {
    "name": "coffee",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2615.png"
  },
  {
    "name": "shamrock",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2618.png"
  },
  {
    "name": "point_up::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/261d-1f3fb.png"
  },
  {
    "name": "point_up::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/261d-1f3fc.png"
  },
  {
    "name": "point_up::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/261d-1f3fd.png"
  },
  {
    "name": "point_up::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/261d-1f3fe.png"
  },
  {
    "name": "point_up::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/261d-1f3ff.png"
  },
  {
    "name": "point_up",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/261d.png"
  },
  {
    "name": "skull_and_crossbones",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2620.png"
  },
  {
    "name": "radioactive_sign",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2622.png"
  },
  {
    "name": "biohazard_sign",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2623.png"
  },
  {
    "name": "orthodox_cross",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2626.png"
  },
  {
    "name": "star_and_crescent",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/262a.png"
  },
  {
    "name": "peace_symbol",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/262e.png"
  },
  {
    "name": "yin_yang",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/262f.png"
  },
  {
    "name": "wheel_of_dharma",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2638.png"
  },
  {
    "name": "white_frowning_face",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2639.png"
  },
  {
    "name": "relaxed",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/263a.png"
  },
  {
    "name": "aries",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2648.png"
  },
  {
    "name": "taurus",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2649.png"
  },
  {
    "name": "gemini",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/264a.png"
  },
  {
    "name": "cancer",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/264b.png"
  },
  {
    "name": "leo",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/264c.png"
  },
  {
    "name": "virgo",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/264d.png"
  },
  {
    "name": "libra",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/264e.png"
  },
  {
    "name": "scorpius",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/264f.png"
  },
  {
    "name": "sagittarius",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2650.png"
  },
  {
    "name": "capricorn",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2651.png"
  },
  {
    "name": "aquarius",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2652.png"
  },
  {
    "name": "pisces",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2653.png"
  },
  {
    "name": "spades",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2660.png"
  },
  {
    "name": "clubs",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2663.png"
  },
  {
    "name": "hearts",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2665.png"
  },
  {
    "name": "diamonds",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2666.png"
  },
  {
    "name": "hotsprings",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2668.png"
  },
  {
    "name": "recycle",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/267b.png"
  },
  {
    "name": "wheelchair",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/267f.png"
  },
  {
    "name": "hammer_and_pick",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2692.png"
  },
  {
    "name": "anchor",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2693.png"
  },
  {
    "name": "crossed_swords",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2694.png"
  },
  {
    "name": "scales",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2696.png"
  },
  {
    "name": "alembic",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2697.png"
  },
  {
    "name": "gear",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2699.png"
  },
  {
    "name": "atom_symbol",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/269b.png"
  },
  {
    "name": "fleur_de_lis",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/269c.png"
  },
  {
    "name": "warning",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26a0.png"
  },
  {
    "name": "zap",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26a1.png"
  },
  {
    "name": "white_circle",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26aa.png"
  },
  {
    "name": "black_circle",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26ab.png"
  },
  {
    "name": "coffin",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26b0.png"
  },
  {
    "name": "funeral_urn",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26b1.png"
  },
  {
    "name": "soccer",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26bd.png"
  },
  {
    "name": "baseball",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26be.png"
  },
  {
    "name": "snowman",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26c4.png"
  },
  {
    "name": "partly_sunny",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26c5.png"
  },
  {
    "name": "thunder_cloud_and_rain",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26c8.png"
  },
  {
    "name": "ophiuchus",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26ce.png"
  },
  {
    "name": "pick",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26cf.png"
  },
  {
    "name": "helmet_with_white_cross",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26d1.png"
  },
  {
    "name": "chains",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26d3.png"
  },
  {
    "name": "no_entry",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26d4.png"
  },
  {
    "name": "shinto_shrine",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26e9.png"
  },
  {
    "name": "church",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26ea.png"
  },
  {
    "name": "mountain",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26f0.png"
  },
  {
    "name": "umbrella_on_ground",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26f1.png"
  },
  {
    "name": "fountain",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26f2.png"
  },
  {
    "name": "golf",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26f3.png"
  },
  {
    "name": "ferry",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26f4.png"
  },
  {
    "name": "boat",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26f5.png"
  },
  {
    "name": "skier",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26f7.png"
  },
  {
    "name": "ice_skate",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26f8.png"
  },
  {
    "name": "person_with_ball::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26f9-1f3fb.png"
  },
  {
    "name": "person_with_ball::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26f9-1f3fc.png"
  },
  {
    "name": "person_with_ball::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26f9-1f3fd.png"
  },
  {
    "name": "person_with_ball::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26f9-1f3fe.png"
  },
  {
    "name": "person_with_ball::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26f9-1f3ff.png"
  },
  {
    "name": "person_with_ball",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26f9.png"
  },
  {
    "name": "tent",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26fa.png"
  },
  {
    "name": "fuelpump",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/26fd.png"
  },
  {
    "name": "scissors",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2702.png"
  },
  {
    "name": "white_check_mark",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2705.png"
  },
  {
    "name": "airplane",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2708.png"
  },
  {
    "name": "email",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2709.png"
  },
  {
    "name": "fist::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/270a-1f3fb.png"
  },
  {
    "name": "fist::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/270a-1f3fc.png"
  },
  {
    "name": "fist::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/270a-1f3fd.png"
  },
  {
    "name": "fist::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/270a-1f3fe.png"
  },
  {
    "name": "fist::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/270a-1f3ff.png"
  },
  {
    "name": "fist",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/270a.png"
  },
  {
    "name": "hand::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/270b-1f3fb.png"
  },
  {
    "name": "hand::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/270b-1f3fc.png"
  },
  {
    "name": "hand::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/270b-1f3fd.png"
  },
  {
    "name": "hand::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/270b-1f3fe.png"
  },
  {
    "name": "hand::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/270b-1f3ff.png"
  },
  {
    "name": "hand",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/270b.png"
  },
  {
    "name": "victory_hand::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/270c-1f3fb.png"
  },
  {
    "name": "victory_hand::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/270c-1f3fc.png"
  },
  {
    "name": "victory_hand::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/270c-1f3fd.png"
  },
  {
    "name": "victory_hand::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/270c-1f3fe.png"
  },
  {
    "name": "victory_hand::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/270c-1f3ff.png"
  },
  {
    "name": "victory_hand",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/270c.png"
  },
  {
    "name": "writing_hand::skin-tone-2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/270d-1f3fb.png"
  },
  {
    "name": "writing_hand::skin-tone-3",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/270d-1f3fc.png"
  },
  {
    "name": "writing_hand::skin-tone-4",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/270d-1f3fd.png"
  },
  {
    "name": "writing_hand::skin-tone-5",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/270d-1f3fe.png"
  },
  {
    "name": "writing_hand::skin-tone-6",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/270d-1f3ff.png"
  },
  {
    "name": "writing_hand",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/270d.png"
  },
  {
    "name": "pencil2",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/270f.png"
  },
  {
    "name": "black_nib",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2712.png"
  },
  {
    "name": "heavy_check_mark",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2714.png"
  },
  {
    "name": "heavy_multiplication_x",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2716.png"
  },
  {
    "name": "latin_cross",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/271d.png"
  },
  {
    "name": "star_of_david",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2721.png"
  },
  {
    "name": "sparkles",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2728.png"
  },
  {
    "name": "eight_spoked_asterisk",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2733.png"
  },
  {
    "name": "eight_pointed_black_star",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2734.png"
  },
  {
    "name": "snowflake",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2744.png"
  },
  {
    "name": "sparkle",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2747.png"
  },
  {
    "name": "cross_mark",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/274c.png"
  },
  {
    "name": "negative_squared_cross_mark",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/274e.png"
  },
  {
    "name": "question",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2753.png"
  },
  {
    "name": "grey_question",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2754.png"
  },
  {
    "name": "grey_exclamation",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2755.png"
  },
  {
    "name": "exclamation",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2757.png"
  },
  {
    "name": "heavy_heart_exclamation_mark_ornament",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2763.png"
  },
  {
    "name": "heart",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2764.png"
  },
  {
    "name": "heavy_plus_sign",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2795.png"
  },
  {
    "name": "heavy_minus_sign",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2796.png"
  },
  {
    "name": "heavy_division_sign",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2797.png"
  },
  {
    "name": "arrow_right",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/27a1.png"
  },
  {
    "name": "curly_loop",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/27b0.png"
  },
  {
    "name": "loop",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/27bf.png"
  },
  {
    "name": "arrow_heading_up",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2934.png"
  },
  {
    "name": "arrow_heading_down",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2935.png"
  },
  {
    "name": "asterisk",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2a-20e3.png"
  },
  {
    "name": "arrow_left",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2b05.png"
  },
  {
    "name": "arrow_up",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2b06.png"
  },
  {
    "name": "arrow_down",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2b07.png"
  },
  {
    "name": "black_large_square",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2b1b.png"
  },
  {
    "name": "white_large_square",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2b1c.png"
  },
  {
    "name": "star",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2b50.png"
  },
  {
    "name": "large_circle",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/2b55.png"
  },
  {
    "name": "zero",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/30-20e3.png"
  },
  {
    "name": "wavy_dash",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/3030.png"
  },
  {
    "name": "part_alternation_mark",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/303d.png"
  },
  {
    "name": "one",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/31-20e3.png"
  },
  {
    "name": "two",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/32-20e3.png"
  },
  {
    "name": "congratulations",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/3297.png"
  },
  {
    "name": "secret",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/3299.png"
  },
  {
    "name": "three",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/33-20e3.png"
  },
  {
    "name": "four",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/34-20e3.png"
  },
  {
    "name": "five",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/35-20e3.png"
  },
  {
    "name": "six",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/36-20e3.png"
  },
  {
    "name": "seven",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/37-20e3.png"
  },
  {
    "name": "eight",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/38-20e3.png"
  },
  {
    "name": "nine",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/39-20e3.png"
  },
  {
    "name": "copyright",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/a9.png"
  },
  {
    "name": "registered_sign",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/ae.png"
  },
  {
    "name": "shibuya",
    "url": "https:\/\/twemoji.maxcdn.com\/2\/72x72\/e50a.png"
  }
]

$(document).on 'turbolinks:load', ->
  $('textarea')
    .atwho
      at: "@",
      displayTpl: "<li><img src='${avatar}' class='circle' />${name}</li>",
      callbacks:
        remoteFilter: (query, callback) ->
          if query.length < 2
            callback({})
          else
            $.getJSON "/users.json", { q: query }, (response) ->
              callback(response)
    .atwho
      at: ":",
      displayTpl: "<li><img src='${url}' class='circle' />${name}</li>",
      insertTpl: ':${name}:',
      data: emojis
