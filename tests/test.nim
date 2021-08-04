import
  unittest,
  assetfile, # will be generated by the 'nimble test' task
  assetfile_fast # will be generated by the 'nimble test' task

suite "Nimassets Tests":
  test "Can Obtain Assets (normal)":
    check assetfile.getAsset("tests/testassets/asset1.txt") == readFile("tests/testassets/asset1.txt")
    check assetfile.getAsset("tests/testassets/asset2.txt") == readFile("tests/testassets/asset2.txt")

  test "Can Obtain Assets (fast)":
    check assetfile_fast.getAsset("tests/testassets/asset1.txt") == readFile("tests/testassets/asset1.txt")
    check assetfile_fast.getAsset("tests/testassets/asset2.txt") == readFile("tests/testassets/asset2.txt")

