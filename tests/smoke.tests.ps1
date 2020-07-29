Describe "snap smoke tests" {
    it "we are running the snap" {
        $pshome | Should -Match ".*snap.*" -Because "the path should contain the word snap"
    }
    it "we can make https calls and parse json" {
        $r = Invoke-RestMethod -Uri https://aka.ms/pwsh-buildinfo-stable
        $r.ReleaseDate.gettype().name | Should -Be 'DateTime'
        $r.BlobName | Should -Match 'v\d-\d-\d'
        $r.ReleaseTag  | Should -Match 'v\d\.\d\.\d'
    }
}
