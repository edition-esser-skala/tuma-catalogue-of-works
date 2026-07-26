\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \major \time 3/4 \tempoMarkup "Andante"
    R2.
    a''16 a, cis e a( gis a \hA gis) a8 a
    \appoggiatura a gis4 r8 g g g \gotoBar "9"
    d4 r r
    R2.*3
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \major \time 3/4 \tempoMarkup "Andante"
    d'16 d, fis a d( cis d cis) d8 d
    \appoggiatura d cis4 r8 cis cis cis
    h16 e, gis h e( dis e \hA dis) e8 e \gotoBar "9"
    d4 r r
    R2.*3
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key d \major \time 3/4 \tempoMarkup "Andante" \autoBeamOff
    R2.*3 \gotoBar "9"
    d'4.^\solo d8 d d
    \appoggiatura d cis4 cis2
    h4. e8 e e
    e4 d2
  }
}

SopranoLyrics = \lyricmode {
  Ky -- ri -- e e --
  lei -- son,
  Ky -- ri -- e e --
  lei -- son,
}

Alto = {
  \relative c' {
    \clef alto
    \key d \major \time 3/4 \tempoMarkup "Andante" \autoBeamOff
    R2.*3 \gotoBar "9"
    R2.
    a'2^\solo a8 a
    \appoggiatura a gis4 g2
    fis4 h2
  }
}

AltoLyrics = \lyricmode {
  Chri -- ste e --
  lei -- son,
  Chri -- ste
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \major \time 3/4 \tempoMarkup "Andante" \autoBeamOff
    %tacet
  }
}

TenoreLyrics = \lyricmode {
  %tacet
}

Basso = {
  \relative c {
    \clef bass
    \key d \major \time 3/4 \tempoMarkup "Andante" \autoBeamOff
    %tacet
  }
}

BassoLyrics = \lyricmode {
  %tacet
}

Organo = {
  \relative c {
    \clef bass
    \key d \major \time 3/4 \tempoMarkup "Andante"
    d4-\solo r8 d fis g
    a4 r8 a, cis d
    e4 r8 e g a \gotoBar "9"
    d,4 r8 d fis g
    a4 r8 a, cis d
    e4 r8 e g a
    h4 r8 h, d h
  }
}

BassFigures = \figuremode {
  r2.
  <4>8 <_+> r2
  <4>8 <_+>4 <_!>4.
  r2.
  <4>8 <_+> r2
  <4>8 <_+>4 <_!>4.
  <4>4 <_!>2
}

\score {
  <<
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
