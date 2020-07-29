Describe "snap smoke tests" {
    it "we are running the snap" {
        $pshome | Should -Match ".*snap.*" -Because "the path should contain the word snap"
    }
}
