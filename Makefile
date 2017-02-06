.PHONY: deploy-javadoc

deploy-javadoc:
	./gradlew javadoc
	rsync -a --delete core/build/docs/javadoc/ ../dialogsforandroid.github.io/javadoc/core
	rsync -a --delete commons/build/docs/javadoc/ ../dialogsforandroid.github.io/javadoc/commons
