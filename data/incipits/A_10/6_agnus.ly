\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    g'4 g a a8 a
    g[ a] h h h4 a8 a
    h fis r4 dis'8[ e] cis[ dis]
    e e, h' h gis4 gis
    a a a a
    a gis a r
  }
}

SopranoLyrics = \lyricmode {
  A -- gnus De -- i, qui
  tol -- lis pec -- ca -- _ ta
  mun -- di: Mi -- se --
  re -- re, mi -- se -- re -- re,
  mi -- se -- re -- re
  no -- _ bis.
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    e4 e fis fis8 fis
    g g fis4 g fis8 e
    fis h, r4 fis'8[ g] e[ fis]
    g4 e f4. f8
    e4. e8 f2
    e e4 r
  }
}

AltoLyrics = \lyricmode {
  A -- gnus De -- i, qui
  tol -- lis pec -- ca -- _ ta
  mun -- di: Mi -- se --
  re -- re, mi -- se --
  re -- re no --
  _ bis.
}

Tenore = {
  \relative c' {
    \clef tenor
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    h4 h c h8 h
    h4 h8 h e4. e8
    dis8[ cis] dis4 r2
    r4 g,8 g h2
    c4 c8 c c4 h
    h2 a
  }
}

TenoreLyrics = \lyricmode {
  A -- gnus De -- i, qui
  tol -- lis pec -- ca -- ta
  mun -- di:
  Mi -- se -- re --
  re, mi -- se -- re -- re
  no -- bis.
}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    e4 e e dis8 dis
    e4 d8 d c4. c8
    h4 h r2
    r4 e8 e d!2
    c4 c8 c f4 d
    e2 a,
  }
}

BassoLyrics = \lyricmode {
  A -- gnus De -- i, qui
  tol -- lis pec -- ca -- ta
  mun -- di:
  Mi -- se -- re --
  re, mi -- se -- re -- re
  no -- bis.
}

Organo = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    e2~ e4 dis
    e d c2
    h \clef soprano << { dis''8 e cis dis e4 } \\ { fis,8 g e fis g4 } >>
    \clef bass e, d!2
    c f4 d
    e2 a,
  }
}

BassFigures = \figuremode {
  r2 <4 2>4 <6 5>
  r <6> <7> <6>
  <_+>1
  r2 <4\+ _!>
  <6> <5>4 <6 5>
  <4> <_+>2.
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
