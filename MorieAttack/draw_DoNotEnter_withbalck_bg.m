function atom_block = draw_DoNotEnter_withbalck_bg(mod_type)
    atom_block = drawCircle;
    if mod_type == "DSB"
        atom_block = [atom_block,255-atom_block;255-atom_block,atom_block];
    else
        atom_block = [atom_block,zeros(12,12,3);zeros(12,12,3),zeros(12,12,3)];
    end
end

