
# sed -i -e 's/12_half_style_14x14/202half_style_14x14/g' scripts/visualize_layers.sh
# sed -i -e 's/32000/2000/g' scripts/visualize_layers.sh 


for filename in ./**.py; 
do
    docker cp 1f49c135dc90:/app/checkpoints/202_half_style_14x14 ./checkpoints/202_half_style_14x14/
done


docker cp 1f49c135dc90:/app/checkpoints/202_half_style_14x14/2000_net_D.pth ./checkpoints/202_half_style_14x14/
docker cp 1f49c135dc90:/app/checkpoints/202_half_style_14x14/latest_net_D.pth   ./checkpoints/202_half_style_14x14/
docker cp 1f49c135dc90:/app/checkpoints/202_half_style_14x14/loss_log.txt ./checkpoints/202_half_style_14x14/
docker cp 1f49c135dc90:/app/checkpoints/202_half_style_14x14/web ./checkpoints/202_half_style_14x14/
docker cp 1f49c135dc90:/app/checkpoints/202_half_style_14x14/2000_net_G.pth ./checkpoints/202_half_style_14x14/
docker cp 1f49c135dc90:/app/checkpoints/202_half_style_14x14/latest_net_G.pth ./checkpoints/202_half_style_14x14/
docker cp 1f49c135dc90:/app/checkpoints/202_half_style_14x14/opt.txt ./checkpoints/202_half_style_14x14/

filename="test.py"; docker cp $filename 1f49c135dc90:/app/scripts/;

docker cp 1f49c135dc90:/app/checkpoints/202_half_style_14x14 ./checkpoints/202_half_style_14x14;
