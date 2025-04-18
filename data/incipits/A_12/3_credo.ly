\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key d \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    r2 r4 d'
    cis r r e
    d r r f
    e r r d
    cis r r c
  }
}

SopranoLyrics = \lyricmode {
  Cre --
  do, cre --
  do, cre --
  do, cre --
  do, "cre -"
}

Alto = {
  \relative c' {
    \clef alto
    \key d \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    r2 a'8 a f g
    a g16 f e8 f g g g f16 e
    f8 f e g a4. a8
    g4 g8 a f4. f8
    e e e gis a4. a8
  }
}

AltoLyrics = \lyricmode {
  Cre -- do u -- num
  Do -- mi -- num Je -- sum Chri -- stum, Fi -- li -- um
  De -- i u -- ni -- ge -- ni --
  tum, et ex Pa -- tre
  na -- tum an -- te o -- "mni -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    r2 d4 d8 d
    e16[ d] e8 r4 cis cis8 cis
    d16 a a8 c c c2
    c8 e e e a,2
    a4 a8 h c d e4
  }
}

TenoreLyrics = \lyricmode {
  De -- um de
  De -- o, lu -- men de
  lu -- mi -- ne, De -- um ve --
  rum de De -- o ve --
  ro, ge -- ni -- tum non "fa -"
}

Basso = {
  \relative c {
    \clef bass
    \key d \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    d4 d8 e f e16[ d] b'4
    a8 e cis d e[ a,] a' g
    f16[ e] d8 a' g f[ g] a b
    c16 c, c8 e cis d[ e] f[ a]
    a16 a, a8 r e' a,[ h] c d
  }
}

BassoLyrics = \lyricmode {
  Pa -- trem o -- mni -- po -- ten --
  tem, fa -- cto -- rem coe -- li et
  ter -- rae, vi -- si -- bi -- li -- um
  o -- mni -- um et in -- vi -- si --
  bi -- li -- um, qui pro -- pter nos
}

Organo = {
  \relative c {
    \clef bass
    \key d \minor \time 4/4 \tempoMarkup "Allegro"
    d4 d8 e f e16 d b'4
    a8 a, cis d e a, a' g
    f d a' g f g a b
    c! c, e cis d e f g
    a a, c h a \hA h c d
  }
}

BassFigures = \figuremode {
  r2. <5>8 <6>
  <_+>2 <6\\>4 <_+>8 <\t>
  <6>4 <_!>8 <6 _-> r2
  r4. <6 5>8 r2
  <_+>4 <6>8 <6\\> r2
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "S" "vl 1" }
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "vl 2" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "vla" "trb 2" }
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
