# for i in */; do zip -r "${i%/}.zip" "$i"; done

# for i in */; do zip -0 -r "${i%/}.zip" "$i" & done; wait


for i in */; do (cd "$i"; zip -r "../${i%/}.zip" .); done 