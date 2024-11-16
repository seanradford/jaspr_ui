 enum TextColor {
  inherit,
  current,
  transparent,
  black,
  white,
  slate_50,
  slate_100,
  slate_200,
  slate_300,
  slate_400,
  slate_500,
  slate_600,
  slate_700,
  slate_800,
  slate_900,
  slate_950,
  gray_50,
  gray_100,
  gray_200,
  gray_300,
  gray_400,
  gray_500,
  gray_600,
  gray_700,
  gray_800,
  gray_900,
  gray_950,
  zinc_50,
  zinc_100,
  zinc_200,
  zinc_300,
  zinc_400,
  zinc_500,
  zinc_600,
  zinc_700,
  zinc_800,
  zinc_900,
  zinc_950,
  neutral_50,
  neutral_100,
  neutral_200,
  neutral_300,
  neutral_400,
  neutral_500,
  neutral_600,
  neutral_700,
  neutral_800,
  neutral_900,
  neutral_950,
  stone_50,
  stone_100,
  stone_200,
  stone_300,
  stone_400,
  stone_500,
  stone_600,
  stone_700,
  stone_800,
  stone_900,
  stone_950,
  red_50,
  red_100,
  red_200,
  red_300,
  red_400,
  red_500,
  red_600,
  red_700,
  red_800,
  red_900,
  red_950,
  orange_50,
  orange_100,
  orange_200,
  orange_300,
  orange_400,
  orange_500,
  orange_600,
  orange_700,
  orange_800,
  orange_900,
  orange_950,
  amber_50,
  amber_100,
  amber_200,
  amber_300,
  amber_400,
  amber_500,
  amber_600,
  amber_700,
  amber_800,
  amber_900,
  amber_950,
  yellow_50,
  yellow_100,
  yellow_200,
  yellow_300,
  yellow_400,
  yellow_500,
  yellow_600,
  yellow_700,
  yellow_800,
  yellow_900,
  yellow_950,
  lime_50,
  lime_100,
  lime_200,
  lime_300,
  lime_400,
  lime_500,
  lime_600,
  lime_700,
  lime_800,
  lime_900,
  lime_950,
  green_50,
  green_100,
  green_200,
  green_300,
  green_400,
  green_500,
  green_600,
  green_700,
  green_800,
  green_900,
  green_950,
  emerald_50,
  emerald_100,
  emerald_200,
  emerald_300,
  emerald_400,
  emerald_500,
  emerald_600,
  emerald_700,
  emerald_800,
  emerald_900,
  emerald_950,
  teal_50,
  teal_100,
  teal_200,
  teal_300,
  teal_400,
  teal_500,
  teal_600,
  teal_700,
  teal_800,
  teal_900,
  teal_950,
  cyan_50,
  cyan_100,
  cyan_200,
  cyan_300,
  cyan_400,
  cyan_500,
  cyan_600,
  cyan_700,
  cyan_800,
  cyan_900,
  cyan_950,
  sky_50,
  sky_100,
  sky_200,
  sky_300,
  sky_400,
  sky_500,
  sky_600,
  sky_700,
  sky_800,
  sky_900,
  sky_950,
  blue_50,
  blue_100,
  blue_200,
  blue_300,
  blue_400,
  blue_500,
  blue_600,
  blue_700,
  blue_800,
  blue_900,
  blue_950,
  indigo_50,
  indigo_100,
  indigo_200,
  indigo_300,
  indigo_400,
  indigo_500,
  indigo_600,
  indigo_700,
  indigo_800,
  indigo_900,
  indigo_950,
  violet_50,
  violet_100,
  violet_200,
  violet_300,
  violet_400,
  violet_500,
  violet_600,
  violet_700,
  violet_800,
  violet_900,
  violet_950,
  purple_50,
  purple_100,
  purple_200,
  purple_300,
  purple_400,
  purple_500,
  purple_600,
  purple_700,
  purple_800,
  purple_900,
  purple_950,
  fuchsia_50,
  fuchsia_100,
  fuchsia_200,
  fuchsia_300,
  fuchsia_400,
  fuchsia_500,
  fuchsia_600,
  fuchsia_700,
  fuchsia_800,
  fuchsia_900,
  fuchsia_950,
  pink_50,
  pink_100,
  pink_200,
  pink_300,
  pink_400,
  pink_500,
  pink_600,
  pink_700,
  pink_800,
  pink_900,
  pink_950,
  rose_50,
  rose_100,
  rose_200,
  rose_300,
  rose_400,
  rose_500,
  rose_600,
  rose_700,
  rose_800,
  rose_900,
  rose_950;

  String get className {
    switch (this) {
      case TextColor.inherit:
        return 'text-inherit';
      case TextColor.current:
        return 'text-current';
      case TextColor.transparent:
        return 'text-transparent';
      case TextColor.black:
        return 'text-black';
      case TextColor.white:
        return 'text-white';
      case TextColor.slate_50:
        return 'text-slate-50';
      case TextColor.slate_100:
        return 'text-slate-100';
      case TextColor.slate_200:
        return 'text-slate-200';
      case TextColor.slate_300:
        return 'text-slate-300';
      case TextColor.slate_400:
        return 'text-slate-400';
      case TextColor.slate_500:
        return 'text-slate-500';
      case TextColor.slate_600:
        return 'text-slate-600';
      case TextColor.slate_700:
        return 'text-slate-700';
      case TextColor.slate_800:
        return 'text-slate-800';
      case TextColor.slate_900:
        return 'text-slate-900';
      case TextColor.slate_950:
        return 'text-slate-950';
      case TextColor.gray_50:
        return 'text-gray-50';
      case TextColor.gray_100:
        return 'text-gray-100';
      case TextColor.gray_200:
        return 'text-gray-200';
      case TextColor.gray_300:
        return 'text-gray-300';
      case TextColor.gray_400:
        return 'text-gray-400';
      case TextColor.gray_500:
        return 'text-gray-500';
      case TextColor.gray_600:
        return 'text-gray-600';
      case TextColor.gray_700:
        return 'text-gray-700';
      case TextColor.gray_800:
        return 'text-gray-800';
      case TextColor.gray_900:
        return 'text-gray-900';
      case TextColor.gray_950:
        return 'text-gray-950';
      case TextColor.zinc_50:
        return 'text-zinc-50';
      case TextColor.zinc_100:
        return 'text-zinc-100';
      case TextColor.zinc_200:
        return 'text-zinc-200';
      case TextColor.zinc_300:
        return 'text-zinc-300';
      case TextColor.zinc_400:
        return 'text-zinc-400';
      case TextColor.zinc_500:
        return 'text-zinc-500';
      case TextColor.zinc_600:
        return 'text-zinc-600';
      case TextColor.zinc_700:
        return 'text-zinc-700';
      case TextColor.zinc_800:
        return 'text-zinc-800';
      case TextColor.zinc_900:
        return 'text-zinc-900';
      case TextColor.zinc_950:
        return 'text-zinc-950';
      case TextColor.neutral_50:
        return 'text-neutral-50';
      case TextColor.neutral_100:
        return 'text-neutral-100';
      case TextColor.neutral_200:
        return 'text-neutral-200';
      case TextColor.neutral_300:
        return 'text-neutral-300';
      case TextColor.neutral_400:
        return 'text-neutral-400';
      case TextColor.neutral_500:
        return 'text-neutral-500';
      case TextColor.neutral_600:
        return 'text-neutral-600';
      case TextColor.neutral_700:
        return 'text-neutral-700';
      case TextColor.neutral_800:
        return 'text-neutral-800';
      case TextColor.neutral_900:
        return 'text-neutral-900';
      case TextColor.neutral_950:
        return 'text-neutral-950';
      case TextColor.stone_50:
        return 'text-stone-50';
      case TextColor.stone_100:
        return 'text-stone-100';
      case TextColor.stone_200:
        return 'text-stone-200';
      case TextColor.stone_300:
        return 'text-stone-300';
      case TextColor.stone_400:
        return 'text-stone-400';
      case TextColor.stone_500:
        return 'text-stone-500';
      case TextColor.stone_600:
        return 'text-stone-600';
      case TextColor.stone_700:
        return 'text-stone-700';
      case TextColor.stone_800:
        return 'text-stone-800';
      case TextColor.stone_900:
        return 'text-stone-900';
      case TextColor.stone_950:
        return 'text-stone-950';
      case TextColor.red_50:
        return 'text-red-50';
      case TextColor.red_100:
        return 'text-red-100';
      case TextColor.red_200:
        return 'text-red-200';
      case TextColor.red_300:
        return 'text-red-300';
      case TextColor.red_400:
        return 'text-red-400';
      case TextColor.red_500:
        return 'text-red-500';
      case TextColor.red_600:
        return 'text-red-600';
      case TextColor.red_700:
        return 'text-red-700';
      case TextColor.red_800:
        return 'text-red-800';
      case TextColor.red_900:
        return 'text-red-900';
      case TextColor.red_950:
        return 'text-red-950';
      case TextColor.orange_50:
        return 'text-orange-50';
      case TextColor.orange_100:
        return 'text-orange-100';
      case TextColor.orange_200:
        return 'text-orange-200';
      case TextColor.orange_300:
        return 'text-orange-300';
      case TextColor.orange_400:
        return 'text-orange-400';
      case TextColor.orange_500:
        return 'text-orange-500';
      case TextColor.orange_600:
        return 'text-orange-600';
      case TextColor.orange_700:
        return 'text-orange-700';
      case TextColor.orange_800:
        return 'text-orange-800';
      case TextColor.orange_900:
        return 'text-orange-900';
      case TextColor.orange_950:
        return 'text-orange-950';
      case TextColor.amber_50:
        return 'text-amber-50';
      case TextColor.amber_100:
        return 'text-amber-100';
      case TextColor.amber_200:
        return 'text-amber-200';
      case TextColor.amber_300:
        return 'text-amber-300';
      case TextColor.amber_400:
        return 'text-amber-400';
      case TextColor.amber_500:
        return 'text-amber-500';
      case TextColor.amber_600:
        return 'text-amber-600';
      case TextColor.amber_700:
        return 'text-amber-700';
      case TextColor.amber_800:
        return 'text-amber-800';
      case TextColor.amber_900:
        return 'text-amber-900';
      case TextColor.amber_950:
        return 'text-amber-950';
      case TextColor.yellow_50:
        return 'text-yellow-50';
      case TextColor.yellow_100:
        return 'text-yellow-100';
      case TextColor.yellow_200:
        return 'text-yellow-200';
      case TextColor.yellow_300:
        return 'text-yellow-300';
      case TextColor.yellow_400:
        return 'text-yellow-400';
      case TextColor.yellow_500:
        return 'text-yellow-500';
      case TextColor.yellow_600:
        return 'text-yellow-600';
      case TextColor.yellow_700:
        return 'text-yellow-700';
      case TextColor.yellow_800:
        return 'text-yellow-800';
      case TextColor.yellow_900:
        return 'text-yellow-900';
      case TextColor.yellow_950:
        return 'text-yellow-950';
      case TextColor.lime_50:
        return 'text-lime-50';
      case TextColor.lime_100:
        return 'text-lime-100';
      case TextColor.lime_200:
        return 'text-lime-200';
      case TextColor.lime_300:
        return 'text-lime-300';
      case TextColor.lime_400:
        return 'text-lime-400';
      case TextColor.lime_500:
        return 'text-lime-500';
      case TextColor.lime_600:
        return 'text-lime-600';
      case TextColor.lime_700:
        return 'text-lime-700';
      case TextColor.lime_800:
        return 'text-lime-800';
      case TextColor.lime_900:
        return 'text-lime-900';
      case TextColor.lime_950:
        return 'text-lime-950';
      case TextColor.green_50:
        return 'text-green-50';
      case TextColor.green_100:
        return 'text-green-100';
      case TextColor.green_200:
        return 'text-green-200';
      case TextColor.green_300:
        return 'text-green-300';
      case TextColor.green_400:
        return 'text-green-400';
      case TextColor.green_500:
        return 'text-green-500';
      case TextColor.green_600:
        return 'text-green-600';
      case TextColor.green_700:
        return 'text-green-700';
      case TextColor.green_800:
        return 'text-green-800';
      case TextColor.green_900:
        return 'text-green-900';
      case TextColor.green_950:
        return 'text-green-950';
      case TextColor.emerald_50:
        return 'text-emerald-50';
      case TextColor.emerald_100:
        return 'text-emerald-100';
      case TextColor.emerald_200:
        return 'text-emerald-200';
      case TextColor.emerald_300:
        return 'text-emerald-300';
      case TextColor.emerald_400:
        return 'text-emerald-400';
      case TextColor.emerald_500:
        return 'text-emerald-500';
      case TextColor.emerald_600:
        return 'text-emerald-600';
      case TextColor.emerald_700:
        return 'text-emerald-700';
      case TextColor.emerald_800:
        return 'text-emerald-800';
      case TextColor.emerald_900:
        return 'text-emerald-900';
      case TextColor.emerald_950:
        return 'text-emerald-950';
      case TextColor.teal_50:
        return 'text-teal-50';
      case TextColor.teal_100:
        return 'text-teal-100';
      case TextColor.teal_200:
        return 'text-teal-200';
      case TextColor.teal_300:
        return 'text-teal-300';
      case TextColor.teal_400:
        return 'text-teal-400';
      case TextColor.teal_500:
        return 'text-teal-500';
      case TextColor.teal_600:
        return 'text-teal-600';
      case TextColor.teal_700:
        return 'text-teal-700';
      case TextColor.teal_800:
        return 'text-teal-800';
      case TextColor.teal_900:
        return 'text-teal-900';
      case TextColor.teal_950:
        return 'text-teal-950';
      case TextColor.cyan_50:
        return 'text-cyan-50';
      case TextColor.cyan_100:
        return 'text-cyan-100';
      case TextColor.cyan_200:
        return 'text-cyan-200';
      case TextColor.cyan_300:
        return 'text-cyan-300';
      case TextColor.cyan_400:
        return 'text-cyan-400';
      case TextColor.cyan_500:
        return 'text-cyan-500';
      case TextColor.cyan_600:
        return 'text-cyan-600';
      case TextColor.cyan_700:
        return 'text-cyan-700';
      case TextColor.cyan_800:
        return 'text-cyan-800';
      case TextColor.cyan_900:
        return 'text-cyan-900';
      case TextColor.cyan_950:
        return 'text-cyan-950';
      case TextColor.sky_50:
        return 'text-sky-50';
      case TextColor.sky_100:
        return 'text-sky-100';
      case TextColor.sky_200:
        return 'text-sky-200';
      case TextColor.sky_300:
        return 'text-sky-300';
      case TextColor.sky_400:
        return 'text-sky-400';
      case TextColor.sky_500:
        return 'text-sky-500';
      case TextColor.sky_600:
        return 'text-sky-600';
      case TextColor.sky_700:
        return 'text-sky-700';
      case TextColor.sky_800:
        return 'text-sky-800';
      case TextColor.sky_900:
        return 'text-sky-900';
      case TextColor.sky_950:
        return 'text-sky-950';
      case TextColor.blue_50:
        return 'text-blue-50';
      case TextColor.blue_100:
        return 'text-blue-100';
      case TextColor.blue_200:
        return 'text-blue-200';
      case TextColor.blue_300:
        return 'text-blue-300';
      case TextColor.blue_400:
        return 'text-blue-400';
      case TextColor.blue_500:
        return 'text-blue-500';
      case TextColor.blue_600:
        return 'text-blue-600';
      case TextColor.blue_700:
        return 'text-blue-700';
      case TextColor.blue_800:
        return 'text-blue-800';
      case TextColor.blue_900:
        return 'text-blue-900';
      case TextColor.blue_950:
        return 'text-blue-950';
      case TextColor.indigo_50:
        return 'text-indigo-50';
      case TextColor.indigo_100:
        return 'text-indigo-100';
      case TextColor.indigo_200:
        return 'text-indigo-200';
      case TextColor.indigo_300:
        return 'text-indigo-300';
      case TextColor.indigo_400:
        return 'text-indigo-400';
      case TextColor.indigo_500:
        return 'text-indigo-500';
      case TextColor.indigo_600:
        return 'text-indigo-600';
      case TextColor.indigo_700:
        return 'text-indigo-700';
      case TextColor.indigo_800:
        return 'text-indigo-800';
      case TextColor.indigo_900:
        return 'text-indigo-900';
      case TextColor.indigo_950:
        return 'text-indigo-950';
      case TextColor.violet_50:
        return 'text-violet-50';
      case TextColor.violet_100:
        return 'text-violet-100';
      case TextColor.violet_200:
        return 'text-violet-200';
      case TextColor.violet_300:
        return 'text-violet-300';
      case TextColor.violet_400:
        return 'text-violet-400';
      case TextColor.violet_500:
        return 'text-violet-500';
      case TextColor.violet_600:
        return 'text-violet-600';
      case TextColor.violet_700:
        return 'text-violet-700';
      case TextColor.violet_800:
        return 'text-violet-800';
      case TextColor.violet_900:
        return 'text-violet-900';
      case TextColor.violet_950:
        return 'text-violet-950';
      case TextColor.purple_50:
        return 'text-purple-50';
      case TextColor.purple_100:
        return 'text-purple-100';
      case TextColor.purple_200:
        return 'text-purple-200';
      case TextColor.purple_300:
        return 'text-purple-300';
      case TextColor.purple_400:
        return 'text-purple-400';
      case TextColor.purple_500:
        return 'text-purple-500';
      case TextColor.purple_600:
        return 'text-purple-600';
      case TextColor.purple_700:
        return 'text-purple-700';
      case TextColor.purple_800:
        return 'text-purple-800';
      case TextColor.purple_900:
        return 'text-purple-900';
      case TextColor.purple_950:
        return 'text-purple-950';
      case TextColor.fuchsia_50:
        return 'text-fuchsia-50';
      case TextColor.fuchsia_100:
        return 'text-fuchsia-100';
      case TextColor.fuchsia_200:
        return 'text-fuchsia-200';
      case TextColor.fuchsia_300:
        return 'text-fuchsia-300';
      case TextColor.fuchsia_400:
        return 'text-fuchsia-400';
      case TextColor.fuchsia_500:
        return 'text-fuchsia-500';
      case TextColor.fuchsia_600:
        return 'text-fuchsia-600';
      case TextColor.fuchsia_700:
        return 'text-fuchsia-700';
      case TextColor.fuchsia_800:
        return 'text-fuchsia-800';
      case TextColor.fuchsia_900:
        return 'text-fuchsia-900';
      case TextColor.fuchsia_950:
        return 'text-fuchsia-950';
      case TextColor.pink_50:
        return 'text-pink-50';
      case TextColor.pink_100:
        return 'text-pink-100';
      case TextColor.pink_200:
        return 'text-pink-200';
      case TextColor.pink_300:
        return 'text-pink-300';
      case TextColor.pink_400:
        return 'text-pink-400';
      case TextColor.pink_500:
        return 'text-pink-500';
      case TextColor.pink_600:
        return 'text-pink-600';
      case TextColor.pink_700:
        return 'text-pink-700';
      case TextColor.pink_800:
        return 'text-pink-800';
      case TextColor.pink_900:
        return 'text-pink-900';
      case TextColor.pink_950:
        return 'text-pink-950';
      case TextColor.rose_50:
        return 'text-rose-50';
      case TextColor.rose_100:
        return 'text-rose-100';
      case TextColor.rose_200:
        return 'text-rose-200';
      case TextColor.rose_300:
        return 'text-rose-300';
      case TextColor.rose_400:
        return 'text-rose-400';
      case TextColor.rose_500:
        return 'text-rose-500';
      case TextColor.rose_600:
        return 'text-rose-600';
      case TextColor.rose_700:
        return 'text-rose-700';
      case TextColor.rose_800:
        return 'text-rose-800';
      case TextColor.rose_900:
        return 'text-rose-900';
      case TextColor.rose_950:
        return 'text-rose-950';
    }
  }
}
 
