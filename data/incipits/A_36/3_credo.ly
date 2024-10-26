\version "2.24.2"
\include "header.ly"

TromboneI = {
  \relative c' {
    \clef alto
    \key g \major \time 4/4 \tempoMarkup "Andante"
    g'4 a8 fis g4. fis8
    g4 g8 g fis fis g4
    fis r8 fis g4 g8 fis
    e8. e16 e8 e fis fis g a
    a g fis4 g g,8 g'
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key g \major \time 4/4 \tempoMarkup "Andante"
    h4 a8 a g d' e d
    d4 r d8 d g,4
    a8 a4 d16 d d8 d g, a
    a4. a8 a4 e'8 d
    d e fis dis e2
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Andante"
    g'16 a h c d e fis d g a h g c h a d
    h d, e fis g a h g a fis g a g fis e g
    fis d fis a d c h a h c h a g a g fis
    e fis e d cis a' h cis d fis, g a g fis g a
    h c h a h fis g a g fis e dis e fis g a
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Andante"
    g'16 a h c d e fis d g a h g c h a d
    h d, e fis g a h g a fis g a g fis e g
    fis d fis a d c h a h c h a g a g fis
    e fis e d cis a' h cis d fis, g a g fis g a
    h c h a h fis g a g fis e dis e fis g a
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    d'8^\tutti d16 d d4 h8 h a4
    h8 d d h a d16 d d8 cis
    d4 d8 d h h cis[ d]
    cis4 cis8. cis16 d8 d c c
    h h h h h4. h8
  }
}

SopranoLyrics = \lyricmode {
  Cre -- do in u -- num de De --
  o, lu -- men de lu -- mi -- ne, De -- um
  ve -- rum de De -- o ve --
  ro, ge -- ni -- tum non fa -- ctum,
  con -- sub -- stan -- ti -- a -- lem
}

Alto = {
  \relative c' {
    \clef alto
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    g'4^\tutti a8 fis g4. fis8
    g4 g8 g fis fis g4
    fis r8 fis g4 g8 fis
    e8. e16 e8 e fis fis g a16 a
    a8 g fis4 g g,8 g'
  }
}

AltoLyrics = \lyricmode {
  Cre -- do in u -- num
  Do -- mi -- num Je -- sum Chri --
  stum, qui pro -- pter nos
  ho -- mi -- nes et pro -- pter no -- stram sa --
  lu -- tem de -- scen -- dit, "de -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    h4^\tutti a8 a g d' e d
    d4 r d8 d g,4
    a8 a4 d16 d d8 d g, a
    a4. a8 a4 e'8 d
    d e fis[ dis] e2
  }
}

TenoreLyrics = \lyricmode {
  Cre -- do in u -- num Do -- mi --
  num Je -- sum Chri --
  stum, Fi -- li -- um De -- i u -- ni --
  ge -- ni -- tum, et ex
  Pa -- tre na -- tum
}

Basso = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    g'4^\tutti fis8 d e h c[ d]
    g,4. g8 d' h e4
    d8 d fis d g4 e8 d
    a'4 a, fis'4. d8
    g4 dis8 h e8. e16 e4
  }
}

BassoLyrics = \lyricmode {
  Cre -- do in De -- um Pa --
  trem o -- mni -- po -- ten --
  tem, fa -- cto -- rem coe -- li et
  ter -- rae, vi -- si --
  bi -- li -- um o -- mni -- um
}

Organo = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \tempoMarkup "Andante"
    g8-\tutti g' fis d e h c d
    g, a h g d' h e4
    d8 d fis d g4 e8 d
    a' a, a' g fis d e fis
    g e dis h e fis g fis
  }
}

BassFigures = \figuremode {
  r1
  r2. <7>8 <6\\>
  r2. q4
  <_+>2 <6>
  <9>1
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
