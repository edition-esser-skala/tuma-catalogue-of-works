\version "2.24.2"
\include "header.ly"

TromboneI = {
  \relative c' {
    \clef alto
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]"
    r2 e8-\tutti dis e e
    dis dis fis fis fis e e d
    d4 r r2
    e4 fis fis8 g g fis16 e
    d8 g fis fis fis2
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1
    fis,8-\tutti fis h a g a16 h c8 c
    c h a a h a h a
    g8. g16 a4 r2
    h8. h16 c8 c h h h fis
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]"
    h'4 e,8 e' c h4 a8
    h4. h8 h a16 g g8 fis
    g4 r r d'~
    d8 cis d4 a8 h c?4
    h8 e e4 e dis
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]"
    r2 e8 dis e e
    dis4. fis4 e d8
    d4 r r2
    e8 e fis fis fis g g fis16 e
    d8 g fis4 fis2
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    h'4^\tutti e,8 e' c h h[ a]
    h h h h h a16 g g8[ fis]
    g4 r r d'
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
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r2 e8^\tutti dis e e16 e
    dis8 dis16 dis fis8 fis fis e e d
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
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1
    fis,8^\tutti fis h a g a16 h c8 c
    c h a a16 a h8 a h a
    g8. g16 a4 r2
    h8. h16 c8 c h h h fis
  }
}

TenoreLyrics = \lyricmode {
  Et in u -- num Do -- mi -- num Je -- sum %2
  Chri -- stum, Fi -- li -- um De -- i u -- ni --
  ge -- ni -- tum,
  ge -- ni -- tum non fa -- ctum, con -- "sub -"
}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1
    r2 r4 a8^\tutti d
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
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]"
    e8-\tutti fis g e a, h c4
    h dis e a,8 d?
    g, h16 c d8 fis g fis g fis
    e4 d r e8 fis
    g g, a4 h2
  }
}

BassFigures = \figuremode {
  r4 <6>4. <_+>8 <7> <6>
  <_+>4 <6> <9>8 <8> <7> q
  r1
  <7>8 <6\\> r2 <6>4
  r8 q r4 <5 4> <\t _+>
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "trb"
        \new Staff {
          \set Staff.instrumentName = "1"
          \TromboneI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \TromboneII
        }
      >>
    >>
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
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
