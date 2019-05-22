readme:
	@echo "Creating README.md"
	@touch README.md
	@echo "## Unix Workbench" > README.md
	@echo "" >> README.md
	@echo "This file was generated on $(shell date)" >> README.md
	@echo "No of lines in \`guessinggame.sh\` is **$(shell cat ./guessinggame.sh | wc -l)**" >> README.md

clean:
	@echo "Removing README.md"
	@rm README.md