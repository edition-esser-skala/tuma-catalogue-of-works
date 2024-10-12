\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    h'4 e,8 e' c h h[ a]
    h h h h h a16 g \grace g8 fis4
    g r r d'
    d8 cis d d a h c4
    h8 e e e e4 dis
  }
}

SopranoLyrics = \lyricmode {
  Pa -- trem o -- mni -- po -- ten --
  tem, fa -- cto -- rem coe -- li et ter --
  rae, De --
  um de De -- o, De -- um ve --
  rum de De -- o ve -- \hy
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    r2 e8 dis e e16 e
    dis8 dis16 dis dis8 fis e e e d
    d4 r r2
    e8 e16 e fis8 fis16 fis fis8 g g[ fis16 e]
    d8 g fis fis fis2
  }
}

AltoLyrics = \lyricmode {
  Vi -- si -- bi -- li -- um
  o -- mni -- um et in -- vi -- si -- bi -- li --
  um,
  lu -- men de lu -- mi -- ne, De -- um ve --
  rum de De -- o "ve -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    R1
    fis,8 fis h a g a16 h c8 c
    c h a a16 a h8 a h a
    g8. g16 a4 r2
    h8. h16 c8 c h h h fis
  }
}

TenoreLyrics = \lyricmode {
  Et in u -- num Do -- mi -- num Je -- sum
  Chri -- stum, Fi -- li -- um De -- i u -- ni --
  ge -- ni -- tum,
  ge -- ni -- tum non fa -- ctum, con -- "sub -"
}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    R1
    r2 r4 a8 d
    g, h16[ c] d8 d g fis g fis16 fis
    e8. e16 d4 r2
    r r4 h8 h
  }
}

BassoLyrics = \lyricmode {
  Et ex
  Pa -- tre na -- tum an -- te o -- mni -- a
  sae -- cu -- la,
  con -- "sub -"
}

Organo = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \tempoMarkup "Allegro"
    e8-\tutti fis g e a, h c4
    h dis e a,8 d
    g, h16 c d8 fis g fis g fis
    e4 d r e8 fis
    g g, a4 h2
  }
}

BassFigures = \figuremode {
  r2 r8 <_+> <7> <6>
  <_+>4 <6>2 <7>8 q
  \bo <[4]> \bc <[6]>2 <6>4 q8
  <7> <6\\> r2 <6!>8 <6 5>
  r <6> <5> <6> <4>4 <_+>
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
