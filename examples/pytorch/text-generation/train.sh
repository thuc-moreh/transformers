python run_generation.py \
    --model_type=transfo-xl \
    --model_name_or_path=transfo-xl-wt103 \
    --fp16
    # --model_type=ctrl \
    # --model_name_or_path=ctrl \
    # --temperature 0.01 \
    # --repetition 1.2 \
    # --prefix="In 1991, the remains of Russian Tsar Nicholas II and his family (except for Alexei and Maria) are discovered. The voice of Nicholas's young son, Tsarevich Alexei Nikolaevich, narrates the remainder of the story. 1883 Western Siberia, a young Grigori Rasputin is asked by his father and a group of men to perform magic. Rasputin has a vision and denounces one of the men as a horse thief. Although his father initially slaps him for making such an accusation, Rasputin watches as the man is chased outside and beaten. Twenty years later, Rasputin sees a vision of the Virgin Mary, prompting him to become a priest. Rasputin quickly becomes famous, with people, even a bishop, begging for his blessing" \
    # --prompt="generate a movie plot" \