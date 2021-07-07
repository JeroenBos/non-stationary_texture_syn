
# sed -i -e 's/12_half_style_14x14/202half_style_14x14/g' scripts/visualize_layers.sh
# sed -i -e 's/32000/2000/g' scripts/visualize_layers.sh 


for filename in ./scripts/*; 
do
    docker cp $filename 1f49c135dc90:/app/scripts/; 
done
