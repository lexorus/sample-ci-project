default_platform: ios

platform :ios do 
	desc "Run tests"
	lane :test do 
		scan(
			scheme: "sample-ci-project",
			project: "sample-ci-project.xcodeproj",
			clean: true,
			code_coverage: false,
			skip_slack: true,
			sdk: "iphonesimulator"
			)
	end

end
