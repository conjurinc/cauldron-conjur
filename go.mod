module github.com/cyberark/summon-conjur

go 1.17

require (
	github.com/cyberark/conjur-api-go v0.10.1
	github.com/karrick/golf v1.1.0
	github.com/sirupsen/logrus v1.8.1
	github.com/stretchr/testify v1.7.2
)

require (
	github.com/bgentry/go-netrc v0.0.0-20140422174119-9fd32a8b3d3d // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	golang.org/x/sys v0.4.0 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace golang.org/x/sys v0.0.0-20191026070338-33540a1f6037 => golang.org/x/sys v0.4.0

replace golang.org/x/sys v0.0.0-20211214234402-4825e8c3871d => golang.org/x/sys v0.4.0
